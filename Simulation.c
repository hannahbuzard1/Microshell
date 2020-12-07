/*
 *  File: Simulation.c ... a skeleton file
    Hannah buzard
    CSCI 447 Fall 2020
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

char trace1[100]; //trace files
char trace2[100];
int numframes;
char *framenum[128]; //array of page numbers for table
char *file1lines[1000000]; //file1Lines and file2lines hold every line frome each file
char *file2lines[1000000];
int bitnum[128]; //reference bit array for table
int processnum[128]; //array of process numbers for table
int pointerpos; // pointer for second chance (Free)
int file1ptr; //pointers for second change (Split)
int file2ptr;
int count1; //counts of file lines for each file
int count2;
int numpagefaults;


//This function performs Second Chance Replacement for Split allocation
//Adds page to spot in table where reference bit is '0' and the process is equal to the page's process
 void SecondChanceSplit (int process, int counter) {
   char* fileLines = malloc(5);
   int pointer;
   if (process == 1) {
     pointer = file1ptr;
     strncpy(fileLines, file1lines[counter], 5);
   } else {
     pointer = file2ptr;
     strncpy(fileLines, file2lines[counter], 5);
   }
   bool found = false;
   while(found != true) { // while a '0' reference bit has not been found, keep looking through table
       if(bitnum[pointer] == 1) { //if a 1 is encountered, set it's reference bit to 0
         bitnum[pointer] = 0;
       } else { //found a '0', then add the page in that spot and update the reference bit and process num
         found = true;
         framenum[pointer] = malloc(5);
         strncpy(framenum[pointer], fileLines, 5);
         bitnum[pointer] = 0;
         processnum[pointer] = process;
       }
       pointer = pointer + 1;
       if(process == 1) {
         if (pointer == numframes/2 - 1 ) {
           pointer = 0;
         }
       } else {
         if (pointer == numframes - 1) {
           pointer = numframes/2;
         }
       }
     }
     if (process == 1) {
       file1ptr = pointer;
     } else {
       file2ptr = pointer;
     }
 }

//This function checks whether a given page is already in the page table or not (for Split allocation)
 int inSplit(int process, int counter) {
   bool found = false;
   int location = -1;
   char* fileLines = malloc(5);
   if (process == 1) {
     strncpy(fileLines, file1lines[counter], 5);
   } else {
     strncpy(fileLines, file2lines[counter], 5);
   }
   for(int i = 0; i < numframes; i++) { //look for the same page number with the same process number in table
     if(strcmp(framenum[i], fileLines) == 0 && processnum[i] == process) {
       found = true;
       location = i;
       break;
     }
   }
   if(found == false) {
     return -1;
   } else {
    return location;
   }
 }
//This function implements second chance replacement for free all allocation
 void SecondChanceFree(int process, int counter) {
   char* fileLines = malloc(5);
   if (process == 1) {
     strncpy(fileLines, file1lines[counter], 5);
   } else {
     strncpy(fileLines, file2lines[counter], 5);
   }
   bool found = false;
   while(found != true) {
       if(bitnum[pointerpos] == 1) { //if the reference bit is 1, reset it to '0'
         bitnum[pointerpos] = 0;
       } else { //if '0' found, add page to table at this spot and update reference bit and process number
         found = true;
         framenum[pointerpos] = malloc(5);
         strncpy(framenum[pointerpos], fileLines, 5);
         bitnum[pointerpos] = 0;
         processnum[pointerpos] = process;
       }
       pointerpos = pointerpos + 1;
       if(pointerpos == numframes - 1) {
         pointerpos = 0;
       }
     }
 }

//This functions checks whether a given element is present in the page table or not (for free all allocation)
 int inFreeTable(int process, int counter) {
   char* fileLines = malloc(5);
   if (process == 1) {
     strncpy(fileLines, file1lines[counter], 5);
   } else {
     strncpy(fileLines, file2lines[counter], 5);
   }
   for(int i = 0; i < numframes; i++) { //look for location in table where the page in table equals the given page
     if(strcmp(framenum[i], fileLines) == 0) {
       return i;
     }
   }
   return -1;
 }

//This function counts the number of lines in each file
 int countLines(FILE* filename) {
   int count = 0;
   char c;
   for (c = getc(filename); c != EOF; c = getc(filename)) {
        if (c == '\n') {
            count = count + 1;
        }
   }
   return count;
 }

//This function is called when 'f' allocation is specified and performs Second chance replacement
 void FreeAll() {
   int file1count = 0;
   int file2count = 0;
   bool process1 = true;
   int totalcount = 0;
   int process;
   int location = 0;
   while (totalcount < count1 + count2) { //while every line from each file has not been read
     if(process1 == true) { //check if page is in the table
       process = 1;
       location = inFreeTable(1, file1count);
     } else {
       process = 2;
       location = inFreeTable(2, file2count);
     }
     if(location != -1) { //if the page was already in the table, give this page a second chance (set ref bit to 1)
       bitnum[location] = 1;
     } else { //otherwise call second chance replacement to add page to table
       if (process == 1) {
         SecondChanceFree(1, file1count);
      } else {
        SecondChanceFree(2, file2count);
      }
       numpagefaults = numpagefaults + 1; //increase page fault num if added page to table
     }
     if(file2count == count2) {
       process1 = true;
     }
     if(file1count == count1) {
       process1 = false;
     }
     if(totalcount%20 == 0) { //switch processes after 20 lines are processed from the same file
       if (process1 == true) {
         process1 = false;
       } else {
         process1 = true;
       }
     }
     totalcount = totalcount + 1;
     if (process == 1) {
       file1count = file1count + 1;
     } else {
       file2count = file2count + 1;
     }
   }
}

//This function is called when 's' is given for Allocation
//This function performs second chance replacement
void Split() {
  int file1count = 0;
  int file2count = 0;
  bool process1 = true;
  int totalcount = 0;
  int process;
  int location = 0;
  while (totalcount < count1 + count2) { //while all lines from each file have not been read
    if(process1 == true) { //check whether current page is already in the page table
      process = 1;
      location = inSplit(1, file1count);
    } else {
      process = 2;
      location = inSplit(2, file2count);
    }
    if(location != -1) { //if page in table, update its reference bit to 1 to give it a second chance
      bitnum[location] = 1;
    } else { //otherwise, call second chance replacement to add page to table
      if (process == 1) {
        SecondChanceSplit(1, file1count);
     } else {
        SecondChanceSplit(2, file2count);
      }
      numpagefaults = numpagefaults + 1; //increase page faults whenever a page is added
    }
    if(file2count == count2) {
      process1 = true;
    }
    if(file1count == count1) {
      process1 = false;
    }
    if(totalcount%20 == 0) { //switch processes once 20 lines have been read from the same file
      if (process1 == true) {
        process1 = false;
      } else {
        process1 = true;
      }
    }
    totalcount = totalcount + 1;
    if (process == 1) {
      file1count = file1count + 1;
    } else {
      file2count = file2count + 1;
    }
  }
}
// A function whose inputs are the trace files names and the allocation
// strategy 's' for split or 'f' for free for all
void Simulate(char* fileName1, char* fileName2, int allocation) {
   file1ptr = 0;         //intialize pointers for split second change
   file2ptr = numframes/2;
   pointerpos = 0;
   FILE* file1 = fopen(fileName1, "r");
   FILE* file2 = fopen(fileName2, "r");
   count1 = countLines(file1);
   count2 = countLines(file2);
   int counter = 0;
   char string[100];
   FILE* file1pt2 = fopen(fileName1, "r");
   FILE* file2pt2 = fopen(fileName2, "r");
   while (fgets(string, 100, file1pt2)) { //read lines from file1 into file1lines array
       char* part = malloc(5);
       memcpy(part, &string[0], 5);
       file1lines[counter] = malloc(5);
       strncpy(file1lines[counter], part,5); //copy first 5 characters from file line (to get page)
       counter = counter + 1;
   }
   counter = 0;
   while (fgets(string, 100, file2pt2)) { //read lines from file2 into file2lines array
       char* part = malloc(5);
       memcpy(part, &string[0], 5);
       file2lines[counter] = malloc(5);
       strncpy(file2lines[counter], part,5); //copy first 5 characters from file line (to get page)
       counter = counter + 1;
   }
   char* src = malloc(5);
   char otherstring[5] = "-1111";
   memcpy(src, &otherstring[0], 5);
   for(int i=0; i< 128; i++) {  //initialize table contents
     bitnum[i] = 0;
     processnum[i] = 0;
     framenum[i] = malloc(5);
     strncpy(framenum[i], src,5);
   }
     if(allocation == 1) {
       FreeAll();
     } else {
       Split();
    }
    printf("Num page faults for %d frames : %d\n", numframes, numpagefaults);
  }

int main( int argc, char *argv[] )  {
  int allocation;
   if( argc < 4 ) {
      printf("Incorrect number of arguments provided.");
      return -1;
   }
   if(strcmp(argv[3], "f") == 0) {
      printf("Allocation: Free All\n");
      allocation = 1;
   } else {
     printf("Allocation: Split\n");
     allocation = 0;
   }
    strncpy(trace1, argv[1], 11);
    trace1[11] = '\0';
    strncpy(trace2, argv[2], 11);
    trace1[11] = '\0';
    numpagefaults = 0;
    numframes = 32;
    Simulate(trace1, trace2, allocation); //run code for 32 frame table
    numpagefaults = 0;
    numframes = 64;
    Simulate(trace1, trace2, allocation); //run code for 64 frame table
    numpagefaults = 0;
    numframes = 128;
    Simulate(trace1,trace2, allocation); // run code for 128 frame table
    return 0;
}

