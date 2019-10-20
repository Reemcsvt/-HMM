#include <iostream>
#include <fstream>
#include <math.h> 
using namespace std;

int main () {
  float x;
  ifstream in_file1, in_file2, in_file3, in_file4, in_file5, in_file6;  
  ofstream out_file1, out_file2, out_file3, out_file4, out_file5, out_file6;
  in_file1.open ("C1_369.txt"); out_file1.open ("C1_369LMH.txt"); 
  in_file2.open ("C2_369.txt"); out_file2.open ("C2_369LMH.txt"); 
  in_file3.open ("C3_369.txt"); out_file3.open ("C3_369LMH.txt"); 
  in_file4.open ("C4_369.txt"); out_file4.open ("C4_369LMH.txt"); 
  in_file5.open ("C5_369.txt"); out_file5.open ("C5_369LMH.txt"); 
  in_file6.open ("C6_369.txt"); out_file6.open ("C6_369LMH.txt"); 

  //1:High  2:Mediam   3:Low
  
  //Three intervals C1: 1.20749 - 1.58212 - 1.95676 - 2.33139 
  int count =1;
  for(int i=0;i<1184;i++){  in_file1>>x; 
  if(x>=1.95676) out_file1<<1;  else if(x>=1.58212)  out_file1<<2;   else if(x>=1.1) out_file1<<3;   else {out_file1<<'X';  cout<<x<<endl;} 
  out_file1<<" ";   
  if(count == 32){count=1;  out_file1<<endl;}  else count++;}

  //Three intervals C2: 1.20625 - 1.58516 - 1.96407 - 2.34298 
  count =1;
  for(int i=0;i<10912;i++){  in_file2>>x; 
  if(x>=1.96407) out_file2<<1;  else if(x>=1.58516)  out_file2<<2;   else if(x>=1.1) out_file2<<3;   else {out_file2<<'X';  cout<<x<<endl;} 
  out_file2<<" ";   
  if(count == 32){count=1;  out_file2<<endl;}  else count++;}

  //Three intervals C3: 1.22248 - 1.6012 - 1.97992 - 2.35863 
  count =1;
  for(int i=0;i<2976;i++){  in_file3>>x; 
  if(x>=1.97992) out_file3<<1;  else if(x>=1.6012)  out_file3<<2;   else if(x>=1.1) out_file3<<3;   else {out_file3<<'X';  cout<<x<<endl;} 
  out_file3<<" ";   
  if(count == 32){count=1;  out_file3<<endl;}  else count++;}

  //Three intervals C4: 1.16105 - 1.54084 - 1.92063 -2.30042  
  count =1;
  for(int i=0;i<18528;i++){  in_file4>>x; 
  if(x>=1.92063) out_file4<<1;  else if(x>=1.54084)  out_file4<<2;   else if(x>=1) out_file4<<3;   else {out_file4<<'X';  cout<<x<<endl;} 
  out_file4<<" ";   
  if(count == 32){count=1;  out_file4<<endl;}  else count++;}

  //Three intervals C5: 1.23151 - 1.61377 - 1.99604 -2.3783
  count =1;
  for(int i=0;i<2240;i++){  in_file5>>x; 
  if(x>=1.99604) out_file5<<1;  else if(x>=1.61377)  out_file5<<2;   else if(x>=1.1) out_file5<<3;   else {out_file5<<'X';  cout<<x<<endl;} 
  out_file5<<" ";   
  if(count == 32){count=1;  out_file5<<endl;}  else count++;}

  //Three intervals C6: 1.1409 - 1.4173 - 1.6937 - 1.9701
  count =1;
  for(int i=0;i<13696;i++){  in_file6>>x; 
  if(x>=1.6937) out_file6<<1;  else if(x>=1.4173)  out_file6<<2;   else if(x>=1) out_file6<<3;   else {out_file6<<'X';  cout<<x<<endl;} 
  out_file6<<" ";   
  if(count == 32){count=1;  out_file6<<endl;}  else count++;}


  cout<<"Done"<<endl;
  system("Pause");
  return 0;}
