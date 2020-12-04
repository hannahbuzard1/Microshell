/*
 *  File: Simulation.c ... a skeleton file
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

void SecondChanceSplit(int line, int process);
int countLines(FILE* filename);
void Simulate(char* fileName1, char* fileName2, char allocation);
int inSplitTable(int line, int process);
int inFreeTable(int line, int process);
void SecondChanceFreeAll(int line, int process);
char trace1[100];
char trace2[100];
int* pagetable[64]; //currently testing 64 frames
int numframes;
int pointerpos;
int ptrP1;
int ptrP2;
int numPageFaults;
/* If there are custom classes/source files that you write, with
   custom functions, and you want those functions available for use in
   THIS .c file, then include the header file for the custom .c
   file(s) you've written, using the #include directive. For example:

   #include "SomeFile.h"

 */

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

void Simulate(char* fileName1, char* fileName2, char allocation) {
  // A function whose inputs are the trace files names and the allocation
  // strategy 's' for split or 'f' for free for all
    pointerpos = 0;
    ptrP1 = 0;
    ptrP2 = 0;
   numframes = 64;
   FILE* file1 = fopen(fileName1, "r");
   FILE* file2 = fopen(fileName2, "r");
   int count1 = countLines(file1);
   int count2 = countLines(file2);
   int file1lines[count1];
   int file2lines[count2];
   int counter = 0;
   char string[100];
   while (fgets(string, 100, file1)) {
       char part[4];
       memcpy(part, &string[0], 4);
       part[4] = '\0';
       file1lines[counter] = atoi(part);
   }
   counter = 0;
   while (fgets(string, 100, file2)) {
       char part[4];
       memcpy(part, &string[0], 4);
       part[4] = '\0';
       file2lines[counter] = atoi(part);
   }
   if(allocation == 'f') {
     int file1count = 0;
     int file2count = 0;
     bool process1 = true;
     int totalcount = 0;
     int process;
     int line;
     while (file1count < sizeof(file1lines)  && file2count < sizeof(file2lines)) {
       if(process1 == true) {
         process = 1;
         line = file1lines[file1count];
         file1count = file1count + 1;
       } else {
         process = 2;
         line = file2lines[file2count];
         file2count = file2count + 1;
       }
       int location = inSplitTable(line,process);
       if(location != 0) {
         int* currpage = pagetable[location];
         currpage[0] = 1;
         pagetable[location] = currpage;
       } else {
         SecondChanceSplit(line, process);
         numPageFaults = numPageFaults + 1;
       }
       if(file2count == sizeof(file2lines)) {
         process1 = true;
       }
       if(file1count == sizeof(file1lines)) {
         process1 = false;
       }
       if(totalcount%20 == 0) {
         if (process1 == true) {
           process1 = false;
         } else {
           process1 = true;
         }
       }
       totalcount = totalcount + 1;
     }
   } else { //set up page table using split allocation strategy
     int line;
     int totalcount = 0;
     bool currentfile1 = true;
     bool replace;
     int process;
     int file1count = 0;
     int file2count = 0;
     int location;
     while (file1count < sizeof(file1lines)  && file2count < sizeof(file2lines)) {
         if(currentfile1 == true) {
           process = 1;
           line = file1lines[file1count];
           location = inFreeTable(line, process);
           if(location != 0) {
               replace = false;
           } else {
             replace = true;
           }
           file1count = file1count + 1;
           if(file1count == sizeof(file1lines)) {
             currentfile1 = false;
           }
         } else {
           process = 2;
           line = file2lines[file2count];
           location = inFreeTable(line, process);
           if(location != 0) {
               replace = false;
           } else {
             replace = true;
           }
           file2count = file2count + 1;
           if(file2count == sizeof(file2lines)) { //revise this
             currentfile1 = true;
           }
         }
         if(totalcount%20 == 0) {
           if (currentfile1 == true) {
             currentfile1 = false;
           } else {
             currentfile1 = true;
           }
         }
         if (replace == false ) {
           int* currpage = pagetable[location];
           currpage[1] = 1;
           pagetable[location] = currpage;
         } else {
             SecondChanceFreeAll(line, process);
         }
       totalcount = totalcount + 1;
       }
   }
}

int inFreeTable(int line, int process) {
  for(int i = 0; i < numframes; i++) {
    int* currpage = pagetable[i];
    if(currpage[0] == line) {
      return i;
    }
  }
  return 0;
}

int inSplitTable(int line, int process) {
  int start;
  int end;
  if(process == 1) {
    start = 0;
    end = numframes;
  } else {
    start = numframes/2;
    end = numframes;
  }
  for(int i = start; i < end; i++) {
    int* currpage = pagetable[i];
    if(currpage[0] == line) {
      return i;
    }
  }
  return 0;
}

void SecondChanceFreeAll(int line, int process) {
  bool found = false;
 while(found != true) {
      int* currpage = pagetable[pointerpos];
      if(currpage[1] == 1) {
        currpage[1] = 0;
      } else {
        found = true;
        int newline[3] = {line, 0, process};
        pagetable[pointerpos] = newline;
      }
      pointerpos = pointerpos + 1;
      if(pointerpos == numframes) {
        pointerpos = 0;
      }
    }
  }

void SecondChanceSplit(int line, int process) {
  int frameptr;
  if (process == 1) {
      frameptr = ptrP1;
  } else {
    frameptr = ptrP2;
  }
  bool found = false;
   while(found != true) {
        int* currpage = pagetable[frameptr];
        if(currpage[1] == 1) {
          currpage[1] = 0;
        } else {
          int newline[3] = {line, 0, process};
          pagetable[frameptr] = newline;
        }
      }
      if (process == 1) {
          ptrP1 = frameptr;
      } else {
        ptrP2 = frameptr;
      }
    }

int main( int argc, char *argv[] )  {
   if( argc != 3 ) {
      printf("Incorrect number of arguments provided.");
      return -1;
   }
    strcpy(trace1,argv[1]);
    strcpy(trace2 , argv[2]);
    int flags = atoi(argv[3]);

    Simulate(trace1, trace2, flags);
    return 0;
}
