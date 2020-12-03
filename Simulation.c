/*
 *  File: Simulation.c ... a skeleton file
 */

#include <stdio.h>
#include <stdlib.h>

char trace1[100];
char trace2[100];
int file1lines[count1];
int file2lines[count2];
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

void readfile1(FILE* file1) {
  int counter = 0;
  char c;
  for (c = getc(file1); c != EOF; c = getc(file1)) {
      char frame[4];
      strncpy(frame, c, 4);
      file1lines[counter] = atoi(frame);
      counter = counter + 1;
  }
}

void readfile2(FILE* file2) {
  int counter = 0;
  char c;
  for (c = getc(file2); c != EOF; c = getc(file2)) {
      char frame[4];
      strncpy(frame, c, 4);
      file2lines[counter] = atoi(frame);
      counter = counter + 1;
  }
}

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

void setTablef(FILE* file1, FILE* file2) {
  bool process1 = true;
  int totalcount = 0;
  int process;
  int line;
  while (file1count < sizeof(file1lines)  && file2count < sizeof(file2lines)) {
    if(process1 = true) {
      process = 1
      line = file1lines[file1count];
      file1count = file1count + 1
    } else {
      process = 2;
      line = file2lines[file2count]
      file2count = file2count + 1;
    }
    int location;
    if(location = inSplitTable(line, process) != NULL) {
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
}

void setTableS(FILE* file1, FILE* file2) {
  int line;
  int totalcount = 0;
  bool currentfile1 = true;
  bool replace;
  int process;
  int file1count = 0;
  int file2count = 0;
  while (file1count < sizeof(file1lines)  && file2count < sizeof(file2lines)) {
      if(currentfile1 == true) {
        process = 1;
        line = file1lines[file1count];
        if(location = inFreeTable(line, process) != NULL) {
            replace = false;
        } else {
          replace = true;
        }
        file1count = file1count + 1;
        if(file1count = sizeof(file1lines)) {
          currentfile1 = false;
        }
      } else {
        process = 2;
        line = file2lines[file2count];
        if(location = inFreeTable(line, process) != NULL) {
            replace = false;
        } else {
          replace = true;
        }
        file2count = file2count + 1;
        if(file2count = sizeof(file2lines)) { //revise this
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
          SecondChanceFree(line, process);
      }
    totalcount = totalcount + 1;
    }
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

   readfile1(file1);
   readfile2(file2);

   char line [256];
   int totalcount;
   int process;
   if(allocation == 'f') {
     setTablef(file1, file1);    //set up page table using free all allocation strategy
   } else { //set up page table using split allocation strategy
     setTableS(file1, file2);
   }
}

int inFreeTable(char* line, int process) {
  for(int i = 0; i < numframes; i++) {
    int* currpage = pagetable[i];
    if(currpage[0]) == line) {
      return i;
    }
  }
  return NULL;
}

int inSplitTable(char* line, int process) {
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
  return NULL;
}

void SecondChanceFreeALl(char* line, int process) {
  bool found = false;
 while(found != true) {
      int* currpage = pagetable[pointerpos];
      if(currpage[1] == 1) {
        currpage[1] = 0;
      } else {
        found = true;
        int newline[3];
        newline = {line, 0, process};
        pagetable[pointerpos] = newline;
      }
      pointerpos = pointerpos + 1;
      if(pointerpos == numpages) {
        pointerpos = 0;
      }
    }
  }

void SecondChanceSplit(char* line, int process) {
  int frameptr;
  int max;
  if (process == 1) {
      frameptr = ptrP1;
      max = numframes/2;
  } else {
    frameptr = ptrP2;
    max = numframes;
  }
  bool found = false;
   while(found != true) {
        int* currpage = pagetable[frameptr];
        if(currpage[1] == 1) {
          currpage[1] = 0;
        } else {
          int newline[3];
          newline = {line, 0, process};
          pagetable[frameptr] = newline;
        }
      }
    }
    if (frame[2] == 1) {
        ptrP1 = frameptr;
    } else {
      ptrP2 = frameptr;
    }
}

int main( int argc, char *argv[] )  {
   if( argc != 3 ) {
      printf("Incorrect number of arguments provided.");
      return;
   }
    trace1 = argv[1];
    trace2 = argv[2];
    int flags = atoi(argv[3]);

    Simulate(trace1, trace2, flags);
}
