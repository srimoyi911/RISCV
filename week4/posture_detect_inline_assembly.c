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
  printf("Entering the value of timeout in sec\n ");
  int time=120;
  int gp0=0xFFFFFF00;
  asm volatile (
    "and x27,x27,%0\n\t" //masking the required bits 
    "or x27,x27,%1\n\t" //time var is put into x27 8 LSB bits
    :
    :"r"(gp0), "r"(time)
    );
  //debug
  	
  int freq=100; //100Hz
  int dist_diff=1;//hardcoding this to 1meter
  int timeout;

  //get the 8bit input timeout value from potentiometer  and store it into variable 
  //x27[7:0]=timeout input pin
  
  int clear_gp0_mask=0x000000FF	;
  asm volatile (
    "and x27,x27,%0\n\t" //Keeping only the 8 bit LSB and clearing others
    "addi %0,x27, 0\n\t" //x27 value is put into timeout variable
    :"=r"(timeout)
    :"r"(clear_gp0_mask)
    
  );
  printf("Value of timeout readback from reg x27 is %d \n", timeout);

while(1){
  //trigger out high  for sensor1
  //x27[8]=trigger output pin
   int trigger;
   trigger=1;
   int trigger_write=trigger<<8;
   int clear_gp2_mask=0xFFFFFEFF;
   asm volatile (
    "and x27,x27,%0\n\t" //clearing the required bits from junk value
    "or x27,x27,%1\n\t" //trigger write var is put into x27 bits 8
    :
    :"r"(clear_gp2_mask),"r"(trigger_write)
  );
  int i;
  for(i=0;i<12;i++); //delay for 120msec
	
  //trigger out low for  sensor1
  //x27[8]= trigger output pin
  asm volatile (
    "and x27,x27,%0\n\t"  //clearing the trigger pins of x27
    :
    :"r"(clear_gp2_mask)
  );
 
 
  //debug
  printf("Entering the echo value of 1 for sensor 1 \n");
  int ec=1<<10;
  int gp1=0xFFFFFBFF;
  asm volatile (
    "and x27,x27,%0\n\t" 
    "or x27,x27,%1\n\t"  
    :
    :"r"(gp1), "r"(ec)
  );
  //debug
 	  
  //get the echo values for sensor1 and store into echo variable
  //x27[10]=high output coming from sensor1
    int  echo;
    asm volatile (
    "ori x27,x27,0\n\t" //retaining all the bits
    "srli %0,x27,10\n\t" 
    :"=r"(echo)
    :
  ); 

  printf("Value of echo for sensor1 is %d\n",(echo&1));
  int count=0;
  int distance=0;
  int duration=0;
  //debug
 
  if (echo ==1)
  {  //debug
     for (i=1;i<=21;i++){ //keep the echo high for 200msec
         
         asm volatile (
           "and x27,x27,%0\n\t" 
           "or x27,x27,%1\n\t" 
           :
	   :"r"(gp1), "r"(ec)
           ); //debug
	  count=count+1;
          
     }
   //debug clearing the echo reg	  
   asm volatile (
           "and x27,x27,%0\n\t"  
           :
	   :"r"(gp1)
           );
   //debug
   //storing the reg value to echo variable
   asm volatile (
    "ori x27,x27,0\n\t" 
    "srli %0,x27,10\n\t"
    :"=r"(echo)
    :
  ); 
   
  }
  
  //debug
  printf("Value of echo for sensor1 after loop exit is %d \n", (echo&1));
  //debug
  duration=division(count,(freq/100)); //returns the value in 10ms resolution
  distance = (duration*10*172)/1000; //distance is in meter
  printf("Value of distance for sensor 1 is %d\n",distance);


  //trigger out high  for sensor2
  //x27[9]=trigger output pin
   trigger=1;
   trigger_write=trigger<<9;
   int clear_gp4_mask=0xFFFFFDFF;
   asm volatile (
    "and x27,x27,%0\n\t" //clearing the required bits from junk value
    "or x27,x27,%1\n\t" //trigger write var is put into x27 bits 8
    :
    :"r"(clear_gp4_mask),"r"(trigger_write)
  );
  //debug passing the trigger out to a variable
  //x27[9]=trigger	  
   int trigger_test;
   asm volatile (
    "ori x27,x27,0\n\t" //retaining all the bits
    "srli %0,x27,9\n\t" 
    :"=r"(trigger_test)
    :
  );	
   printf("Checkif trigger is 1 for sensor 2:%d \n",(trigger_test&1));
    
  for(i=0;i<12;i++); //delay for 120msec,as one count=10msec as per cpu freq
	
  //trigger out low for  sensor2
  //x27[9]= trigger output pin
  asm volatile (
    "and x27,x27,%0\n\t"  //clearing the trigger pins of x27
    :
    :"r"(clear_gp4_mask)
  );

  //debug
  printf("Entering the echo value of 1 for sensor 2\n");
  int ec_one=1<<11;
  int gp2=0xFFFFF7FF;
  asm volatile (
    "and x27,x27,%0\n\t" //masking the required bits 
    "or x27,x27,%1\n\t"  
    :
    :"r"(gp2), "r"(ec_one)
  );
  //debug
  
  //get the echo values for sensor2 and store into echo1 variable
  //x27[11]=high output coming from sensor2
    int  echo1;
    asm volatile (
    "ori x27,x27,0\n\t"//retaining all the bits
    "srli %0,x27,11\n\t" //shift right and move to LSB 
    :"=r"(echo1)
    :
  ); 
  
  printf("Value of echo1 %d\n",echo1);
  int count1=0;
  int distance1=0;
  int duration1=0;
  //debug
  
  if (echo1 ==1)
  {       //debug
	  for (i=1;i<=21;i++){//keep echo high for 200msec
               int ec1=1<<11;
               asm volatile (
               "and x27,x27,%0\n\t" //masking the required bits 
               "or x27,x27,%1\n\t"  
               :
	       :"r"(gp2), "r"(ec1)
	       );
               count1=count1+1;//debug
               
	  }
  //debug
  asm volatile (
               "and x27,x27,%0\n\t" //clearing the echo register  
               :
	       :"r"(gp2)
	       );
  //debug
  //reg value is put into echo1 variable
  asm volatile (
    "ori x27,x27,0\n\t" 
    "srli %0,x27,11\n\t" //shift right and move trgger to LSB 
    :"=r"(echo1)
    :
  );	  
  } 
  //debug
  printf("Value of echo for sensor 2 after loop exit is %d \n",(echo1 & 1));
  duration1=division(count1,(freq/100)); //returns the value in msec
  distance1 = (duration1*10*172)/1000; //distance is in meter
  printf("Value of distance for sensor 2 is %d \n", distance1);

  int clear_gp6_mask=0xFFFFEFFF;
  int clear_gp7_mask=0xFFFFDFFF;	
  if((distance-distance1)<=dist_diff){
	  printf("correct posture\n");}
  
 else {
	  
  //x27[12]=buzzer
   int buzzer=1;
   int buzzer_write= (buzzer)<<12;
  
   asm volatile (
    "and x27,x27,%0\n\t" 
    "or x27,x27,%1\n\t" 
    :
    :"r"(clear_gp6_mask),"r"(buzzer_write)
  );
   //x27[13]=led	  
   int led=1;
   int led_write=(led)<<13;
   asm volatile (
    "and x27,x27,%0\n\t" //clearing the required bits from junk value
    "or x27,x27,%1\n\t" 
    :
    :"r"(clear_gp7_mask),"r"(led_write)
  );
  printf("incorrect posture: led and buzzer up!! \n");
  }
  //debug passing the buzzer out to a variable
  //x27[12]=buzzer  
   int buzzer1,led1;
 
   asm volatile (
    "ori x27,x27,0\n\t" //retaining all the bits
    "srli %0,x27,12\n\t"
    "srli %1,x27,13\n\t"
    :"=r"(buzzer1),"=r"(led1)
    :
  );
  printf("Check if buzzer is set :%d \n",(buzzer1&1));
 
  printf("Check if led is set :%d \n",(led1&1 ));
  //debug
  // clearing led and buzzer
   asm volatile (
    "and x27,x27,%0\n\t" //clearing only the required bits 
    :
    :"r"(clear_gp6_mask)
  );
     asm volatile (
    "and x27,x27,%0\n\t" //clearing only the required bits 
    :
    :"r"(clear_gp7_mask)
  );
  for(i=0;i<=(1000*timeout);i++);// wait for the timeout value in sec
}

}
