#include <iostream>
#include <fstream>
#include <math.h> 
using namespace std;
int main () {
  double x, y;
  ifstream in_file1, in_file2, in_file3, in_file4, in_file5, in_file6;
  in_file1.open ("C1_369.txt"); in_file2.open ("C2_369.txt"); in_file3.open ("C3_369.txt"); 
  in_file4.open ("C4_369.txt"); in_file5.open ("C5_369.txt"); in_file6.open ("C6_369.txt");
 
  double max=-1000;   double min=1000; 
  for(int i=0;i<1184;i++){   in_file1>>x;  if(x>max) max=x;  if(x<min) min=x;}
  y=(max-min)/3.0; cout<<"Three intervals C1:"<<endl;
  cout<<min<<endl<<min+y<<endl<<min+2*y<<endl<<min+3*y<<endl<<endl;
  cout<<max-min<<endl;
  
  max=-1000;   min=1000; 
  for(int i=0;i<10912;i++){   in_file2>>x;  if(x>max) max=x;  if(x<min) min=x;}
  y=(max-min)/3.0; cout<<"Three intervals C2:"<<endl;
  cout<<min<<endl<<min+y<<endl<<min+2*y<<endl<<min+3*y<<endl<<endl;
cout<<max-min<<endl;

  max=-1000;   min=1000; 
  for(int i=0;i<2976;i++){   in_file3>>x;  if(x>max) max=x;  if(x<min) min=x;}
  y=(max-min)/3.0; cout<<"Three intervals C3:"<<endl;
  cout<<min<<endl<<min+y<<endl<<min+2*y<<endl<<min+3*y<<endl<<endl;  
cout<<max-min<<endl;
    
  max=-1000;   min=1000; 
  for(int i=0;i<18528;i++){   in_file4>>x;  if(x>max) max=x;  if(x<min) min=x;}
  y=(max-min)/3.0; cout<<"Three intervals C4:"<<endl;
  cout<<min<<endl<<min+y<<endl<<min+2*y<<endl<<min+3*y<<endl<<endl;
cout<<max-min<<endl;
  
  max=-1000;   min=1000; 
  for(int i=0;i<2240;i++){   in_file5>>x;  if(x>max) max=x;  if(x<min) min=x;}
  y=(max-min)/3.0; cout<<"Three intervals C5:"<<endl;
  cout<<min<<endl<<min+y<<endl<<min+2*y<<endl<<min+3*y<<endl<<endl;
cout<<max-min<<endl;
  
  max=-1000;   min=1000; 
  for(int i=0;i<13696;i++){   in_file6>>x;  if(x>max) max=x;  if(x<min) min=x;}
  y=(max-min)/3.0; cout<<"Three intervals C6:"<<endl;
  cout<<min<<endl<<min+y<<endl<<min+2*y<<endl<<min+3*y<<endl;  
cout<<max-min<<endl;
  
  cout<<"Done"<<endl;
  system("Pause");
  return 0;
}
