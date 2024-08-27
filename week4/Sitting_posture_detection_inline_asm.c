int division(int dividend, int divisor) {
    int quotient = 0;
    
   
    while (dividend >= divisor) {
        dividend -= divisor;
        quotient++;
    }

    return quotient;
}

int main() {

  int freq=100; //100Hz
  //get the 4bit input timeout value from potentiometer  and store it into variable 
  //X30[3:0]=timeout input pin
  int timeout;
  int clear_gp0_mask=0x0000000F;
  asm volatile (
    "and x30,x30,%0\n\t" //passing only the 4 bit LSB enabled and masking others
    "addi %0,x30, 0\n\t" //x30 value is put into dist_hd_back variable
    :"r"(clear_gp0_mask),
    :"=r"(timeout)
  );
   
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

  //get the distance values for sensor1 and store into echo variable
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
  if (echo ==1)
  {
	  printf("echo for sensor1  triggered");
	  count=count+1;
  } 
  duration=division(count,freq); //returns the value in sec
  distance = duration*172; //distance is in meter
  	
  //trigger out high  for sensor2
  //X30[9]=trigger output pin
   trigger=1;
   int trigger_write=trigger<<9;
   int clear_gp4_mask=0xFFFFFDFF;
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    "or x30,x30,%1\n\t" //trigger write var is put into x30 bits 8,9
    :"r"(clear_gp2_mask),"r"(trigger_write)
  );
	
  for(i=0;i<12;i++); //delay for 12usec
	
  //trigger out low for  sensor2
  //X30[9]= trigger output pin
  asm volatile (
    "and x30,x30,%0\n\t"  //clearing the trigger pins of x30
    :"r"(clear_gp4_mask)
  );

  //get the distance values for sensor2 and store into echo variable
  //x30[11]=high output coming from sensor1
    int  echo1;
    int clear_gp5_mask=0x00000800;
    asm volatile (
    "and x30,x30,%0\n\t" //keeping only the 11 bit  enabled and masking others
    "srli x30,x30,11\n\t" //shift right and move trgger to LSB
    "addi %0,x30, 0\n\t" //x30 value is put into echo variable
    :"r"(clear_gp5mask),
    :"=r"(echo1)
  ); 
  int count1=0;
  int distance1=0;
  int duration1=0;
  if (echo1 ==1)
  {
	  printf("echo for sensor2  triggered");
	  count1=count1+1;
  } 
  duration1=division(count1,freq); //returns the value in sec
  distance1 = duration1*172; //distance is in meter
  if((distance==distance1){
	  printf("correct posture");}
  else if {
	  
  //X30[4]=buzzer
   int buzzer=1;
   int buzzer_write=buzzer<<4;
   int clear_gp6_mask=0xFFFFFFEF;
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    "or x30,x30,%1\n\t" 
    :"r"(clear_gp6_mask),"r"(buzzer_write)
  );
   //X30[5]=led	  
   int led=1;
   int led_write=led<<5;
   int clear_gp7_mask=0xFFFFFFDF;
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    "or x30,x30,%1\n\t" 
    :"r"(clear_gp7_mask),"r"(buzzer_write)
  );
  printf("incorrect posture: led and buzzer up");}
  }
  // clearing led and buzzer
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    :"r"(clear_gp6_mask)
  );
     asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    :"r"(clear_gp7_mask)
  );
  for(i=0;i<=(1000000*timeout);i++);
}
 
