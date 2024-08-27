#include<stdio.h>
int division(int dividend, int divisor) {
    int quotient = 0;
    
    while (dividend >= divisor) {
        dividend -= divisor;
        quotient++;
    }

    return quotient;
}

int main() {
  
  
  //debug
  printf("Entering the value of timeout in sec ");
  int time=30;
  int gp0=0xFFFFFF00;
  asm volatile (
    "and x30,x30,%0\n\t" //masking the required bits 
    "or x30,x30,%1\n\t" //time var is put into x30 8 bit LSB 
    :"r"(gp0), "r"(time)
  );
  //debug
  	
  int freq=100; //100Hz
  //get the 8bit input timeout value from potentiometer  and store it into variable 
  //X30[7:0]=timeout input pin
  int timeout;
  int clear_gp0_mask=0x000000FF	;
  asm volatile (
    "and x30,x30,%0\n\t" //passing only the 8 bit LSB enabled and masking others
    "addi %0,x30, 0\n\t" //x30 value is put into timeout variable
    :"r"(clear_gp0_mask),
    :"=r"(timeout)
  );
  printf("Value of timeout is %d \n", timeout);
while(1){
  //trigger out high  for sensor1
  //X30[8]=trigger output pin
   int trigger;
   trigger=1;
   int trigger_write=trigger<<8;
   int clear_gp2_mask=0xFFFFFEFF;
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    "or x30,x30,%1\n\t" //trigger write var is put into x30 bits 8,9
    :"r"(clear_gp2_mask),"r"(trigger_write)
  );
  int i;
  for(i=0;i<12;i++); //delay for 12usec
	
  //trigger out low for  sensor1
  //X30[8]= trigger output pin
  asm volatile (
    "and x30,x30,%0\n\t"  //clearing the trigger pins of x30
    :"r"(clear_gp2_mask)
  );
 
 
  //debug
  printf("Entering the value of echo value 1 for sensor 1");
  int ec=1<<10;
  int gp1=0xFFFFFFBFF;
  asm volatile (
    "and x30,x30,%0\n\t" //masking the required bits 
    "or x30,x30,%1\n\t" //time var is put into x30 10 bit 
    :"r"(gp1), "r"(ec)
  );
  //debug
	  
  //get the echo values for sensor1 and store into echo variable
  //x30[10]=high output coming from sensor1
    int  echo;
    int clear_gp3_mask=0x00000400;
    asm volatile (
    "and x30,x30,%0\n\t" //keeping only the 10 bit  enabled and masking others
    "srli x30,x30,10\n\t" //shift right and move trgger to LSB
    "addi %0,x30, 0\n\t" //x30 value is put into echo variable
    :"r"(clear_gp3mask),
    :"=r"(echo)
  ); 
  
  int count=0;
  int distance=0;
  int duration=0;
  //debug
  int ec=1<<10;
  int gp1=0xFFFFFFBFF;
  if (echo ==1)
  {
     for (i=0;i<=1000000;i++){
         
         asm volatile (
           "and x30,x30,%0\n\t" //masking the required bits 
           "or x30,x30,%1\n\t" //time var is put into x30 10 bit 
           :"r"(gp1), "r"(ec)
           );
	  count=count+1;
     }
   //debug
   ec=0;	  
   asm volatile (
           "and x30,x30,%0\n\t" //masking the required bits 
           "or x30,x30,%1\n\t" //time var is put into x30 10 bit 
           :"r"(gp1), "r"(ec)
           );
   //debug
  }
  
  //debug
  printf("Value of echo for sensor1 test is %d", echo);
  //debug
  duration=division(count,freq); //returns the value in sec
  distance = duration*172; //distance is in meter

	
  //trigger out high  for sensor2
  //X30[9]=trigger output pin
   trigger=1;
   int trigger_write=trigger<<9;
   int clear_gp4_mask=0xFFFFFDFF;
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    "or x30,x30,%1\n\t" //trigger write var is put into x30 bits 8
    :"r"(clear_gp2_mask),"r"(trigger_write)
  );
	
  for(i=0;i<12;i++); //delay for 12usec
	
  //trigger out low for  sensor2
  //X30[9]= trigger output pin
  asm volatile (
    "and x30,x30,%0\n\t"  //clearing the trigger pins of x30
    :"r"(clear_gp4_mask)
  );

  //debug
  printf("Entering the echo value of 1 for sensor 2");
  int ec1=1<<11;
  int gp2=0xFFFFFF7FF;
  asm volatile (
    "and x30,x30,%0\n\t" //masking the required bits 
    "or x30,x30,%1\n\t" //time var is put into x30 10 bit 
    :"r"(gp2), "r"(ec1)
  );
  //debug
	  
  //get the echo values for sensor2 and store into echo1 variable
  //x30[11]=high output coming from sensor1
    int  echo1;
    int clear_gp5_mask=0x00000800;
    asm volatile (
    "and x30,x30,%0\n\t" //keeping only the 11 bit  enabled and masking others
    "srli x30,x30,11\n\t" //shift right and move trgger to LSB
    "addi %0,x30, 0\n\t" //x30 value is put into echo1 variable
    :"r"(clear_gp5mask),
    :"=r"(echo1)
  ); 
  int count1=0;
  int distance1=0;
  int duration1=0;
  //debug
  
  if (echo1 ==1)
  {
	  for (i=0;i<=1000000;i++){
               int ec1=1<<11;
               asm volatile (
               "and x30,x30,%0\n\t" //masking the required bits 
               "or x30,x30,%1\n\t" //time var is put into x30 10 bit 
               :"r"(gp2), "r"(ec1)
	       );
               count1=count1+1;
	  }
  ec1=0;
  asm volatile (
               "and x30,x30,%0\n\t" //masking the required bits 
               "or x30,x30,%1\n\t" //time var is put into x30 10 bit 
               :"r"(gp2), "r"(ec1)
	       );	  
  } 
  //debug
  printf("Value of echo for test sensor 2 is %d--should be zero",echo1);
  duration1=division(count1,freq); //returns the value in sec
  distance1 = duration1*172; //distance is in meter
	
  if((distance==distance1){
	  printf("correct posture");}
  else if {
	  
  //X30[12]=buzzer
   int buzzer=1;
   int buzzer_write=buzzer<<12;
   int clear_gp6_mask=0xFFFFEFFF;
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    "or x30,x30,%1\n\t" 
    :"r"(clear_gp6_mask),"r"(buzzer_write)
  );
   //X30[13]=led	  
   int led=1;
   int led_write=led<<13;
   int clear_gp7_mask=0xFFFFDFFF;
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    "or x30,x30,%1\n\t" 
    :"r"(clear_gp7_mask),"r"(buzzer_write)
  );
  printf("incorrect posture: led and buzzer up");}
  }
  //debug
  //X30[13]=led	  
   int led1;
   int gp9=0x00002000;
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    "or %0,x30,0\n\t" 
    :"r"(gp9),"=r"(led1)
  );
  printf("Check if led is set :%d",led1);
  //debug
  // clearing led and buzzer
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    :"r"(clear_gp6_mask)
  );
     asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    :"r"(clear_gp7_mask)
  );
  for(i=0;i<=(1000000*timeout);i++);// wait for the timeout value in sec
}
}
 
