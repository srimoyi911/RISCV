
int division(int dividend, int divisor) {
    int quotient = 0;
    
    while (dividend >= divisor) {
        dividend -= divisor;
        quotient++;
        
    }

    return quotient;
}

int multiply(int a, int b) {
    int out = 0;
    
    if(b== 0)
    return 0;
 
    
    if(b > 0 )
    return (a + multiply(a, b-1));
 
        
    }

    


int main() {
  
  

  	
  int freq=100; //100Hz
  int dist_diff=1;//hardcoding this to 1meter
  int timeout;
  int freq_res=division(freq,100);
  //get the 8bit input timeout value from potentiometer  and store it into variable 
  //x27[7:0]=timeout input pin
  
  int clear_gp0_mask=0x000000FF	;
  asm volatile (
    "and x27,x27,%0\n\t" //Keeping only the 8 bit LSB and clearing others
    "addi %0,x27, 0\n\t" //x27 value is put into timeout variable
    :"=r"(timeout)
    :"r"(clear_gp0_mask)
    
  );
  

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
 
 
 	  
  //get the echo values for sensor1 and store into echo variable
  //x27[10]=high output coming from sensor1
    int  echo;
    asm volatile (
    "ori x27,x27,0\n\t" //retaining all the bits
    "srli %0,x27,10\n\t" 
    :"=r"(echo)
    :
  ); 

  echo=(echo & 1);

  int count=0;
  int distance=0;
  int duration=0;

 
  if (echo ==1)
  { 
    count=count+1;

   //storing the reg value to echo variable
   asm volatile (
    "ori x27,x27,0\n\t" 
    "srli %0,x27,10\n\t"
    :"=r"(echo)
    :
  ); 
  echo=(echo & 1);
   
  }
  
  
  duration=division(count,freq_res); //returns the value in 10ms resolution
  distance = division(multiply(1720,duration),1000); //distance is in meter



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
	
 
  for(i=0;i<12;i++); //delay for 120msec,as one count=10msec as per cpu freq
	
  //trigger out low for  sensor2
  //x27[9]= trigger output pin
  asm volatile (
    "and x27,x27,%0\n\t"  //clearing the trigger pins of x27
    :
    :"r"(clear_gp4_mask)
  );


  
  //get the echo values for sensor2 and store into echo1 variable
  //x27[11]=high output coming from sensor2
    int  echo1;
    asm volatile (
    "ori x27,x27,0\n\t"//retaining all the bits
    "srli %0,x27,11\n\t" //shift right and move to LSB 
    :"=r"(echo1)
    :
  ); 
  echo1=(echo1 & 1);
  
  int count1=0;
  int distance1=0;
  int duration1=0;

  if (echo1 ==1)
  {       

  count1=count1+1;
             
  asm volatile (
    "ori x27,x27,0\n\t"
    "srli %0,x27,11\n\t" //passing reg value to echo1 variable 
    :"=r"(echo1)
    :
  );
    echo1=(echo1 & 1);	  
  } 

 
  duration1=division(count1,freq_res); //returns the value in msec
  distance1 = division(multiply(1720,duration1),1000); //distance is in meter
  

  int clear_gp6_mask=0xFFFFEFFF;
  int clear_gp7_mask=0xFFFFDFFF;	
  if((distance-distance1)>=dist_diff){
	  
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
  
  }
  
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
  for(i=0;i<=(multiply(1000,timeout));i++);// wait for the timeout value in sec
}

}
