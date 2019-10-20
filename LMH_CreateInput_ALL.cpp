#include <iostream>
#include <fstream>
#include <math.h> 
using namespace std;

int main () {
  char x;
  ifstream in_file1, in_file2, in_file3, in_file4, in_file5, in_file6;  ofstream out_file;
  in_file1.open ("C1_369LMH.txt");  in_file2.open ("C2_369LMH.txt"); in_file3.open ("C3_369LMH.txt");  
  in_file4.open ("C4_369LMH.txt");  in_file5.open ("C5_369LMH.txt");  in_file6.open ("C6_369LMH.txt");
  out_file.open ("InputData369ALL.txt"); 
  
  ///////////////////////////    1    ///////////////////////////////////
  int count=1;  out_file<<"C1 = [";    in_file1>>x; 
  while(!in_file1.eof()){  
    out_file<<x;  out_file<<" ";     
    if(count == 32) {count=1;  out_file<<";\n";}  else count++;
    in_file1>>x; }
  out_file<<"];\n\n";
  ///////////////////////////   2    ////////////////////////////////////
  count=1;  out_file<<"C2 = [";    in_file2>>x; 
  while(!in_file2.eof()){  
    out_file<<x;  out_file<<" ";     
    if(count == 32) {count=1;  out_file<<";\n";}  else count++;
    in_file2>>x; }
  out_file<<"];\n\n";
  ///////////////////////////   3   ////////////////////////////////////
  count=1;  out_file<<"C3 = [";    in_file3>>x; 
  while(!in_file3.eof()){  
    out_file<<x;  out_file<<" ";     
    if(count == 32) {count=1;  out_file<<";\n";}  else count++;
    in_file3>>x; }
  out_file<<"];\n\n";
   ///////////////////////////   4   ////////////////////////////////////
  count=1;  out_file<<"C4 = [";    in_file4>>x; 
  while(!in_file4.eof()){  
    out_file<<x;  out_file<<" ";     
    if(count == 32) {count=1;  out_file<<";\n";}  else count++;
    in_file4>>x; }
  out_file<<"];\n\n";
   ///////////////////////////   5   ////////////////////////////////////
  count=1;  out_file<<"C5 = [";    in_file5>>x; 
  while(!in_file5.eof()){  
    out_file<<x;  out_file<<" ";     
    if(count == 32) {count=1;  out_file<<";\n";}  else count++;
    in_file5>>x; }
  out_file<<"];\n\n";
   ///////////////////////////   6   ////////////////////////////////////
  count=1;  out_file<<"C6 = [";    in_file6>>x; 
  while(!in_file6.eof()){  
    out_file<<x;  out_file<<" ";     
    if(count == 32) {count=1;  out_file<<";\n";}  else count++;
    in_file6>>x; }
  out_file<<"];\n\n";
     
  //system("Pause");
  return 0;}

