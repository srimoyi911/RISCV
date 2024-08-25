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
  // Get the 4 bit distance input value from a potentiometer  and store it into variable //check
  //X30[3:0]=distance input pin
  int dist_hd_back;
  int clear_gp0_mask=0x0000000F;
  asm volatile (
    "and x30,x30,%0\n\t" //passing only the 4 bit LSB enabled and masking others
    "addi %0,x30, 0\n\t" //x30 value is put into dist_hd_back variable
    :"r"(clear_gp0_mask),
    :"=r"(dist_hd_back)
  );
  
  //get the 4bit input timeout value from potentiometer  and store it into variable //check
  //X30[7:4]=timeout input pin
   int timeout;
   int clear_gp1_mask=0x000000F0;
   asm volatile (
    "and x30,x30,%0\n\t" 
    "and x10, x10,0\n\t"
    "srli x10,x30,4\n\t" //shift right by 4bits 
    "addi %0,x10, 0\n\t" //x10 value is put into timeout variable
    :"r"(clear_gp1_mask),
    :"=r"(timeout)
  );
   
  //trigger out high  for two sensors
  //X30[9:8]=trigger output pin
   int trigger;
   trigger=3;
   int trigger_write=trigger<<8;
   int clear_gp2_mask=0xFFFFFCFF;
   asm volatile (
    "and x30,x30,%0\n\t" //clearing the required bits from junk value
    "or x30,x30,%1\n\t" //trigger write var is put into x30 bits 8,9
    :"r"(clear_gp2_mask),"r"(trigger_write)
  );
  int i;
  for(i=0;i<12;i++); //trigger ON for 12usec
	
  //trigger out low for two sensors
  //X30[9:8]= trigger output pin
  asm volatile (
    "and x30,x30,%0\n\t"  //clearing the trigger pins of x30
    :"r"(clear_gp2_mask)
  );

  //get the distance values from two sensors and store it into temp1 and temp2 variables
  //x30[11:10]=high output coming from two sensors
    int  echo;
    int clear_gp3_mask=0x00000C00;
    asm volatile (
    "and x30,x30,%0\n\t" //keeping only the 10,11 bit  enabled and masking others
    "srli x30,x30,10\n\t"
    "addi %0,x30, 0\n\t" //x30 value is put into dist_hd_back variable
    :"r"(clear_gp3mask),
    :"=r"(echo)
  ); 
  int count=0;
  int distance=0;
  if (echo >=1 && echo <=3)
  {
          printf("echo triggered");
	  count=count+1;
  } 
  duration=division(count,freq); //returns the value in sec
  distance = duration*172; //distance is in meter
  if
    while(1){
    //debug
	echo_hd=1;
	echo_back=1;
	//debug
    trigger=1; //single trigger pin goes to both sensors
	for(i=0;i<200;i++);//trigger on for 12usec,@200MHz RISCV speed, and 1.5 CPI and 8 instructions.
	trigger=0;
	start = clock();
    while ((echo_hd == 1)|| (echo_back==1)){
		//debug
		printf("enter the value of echo_hd for test\n");
		scanf("%d", &echo_hd);
		printf("enter the value of echo_back for test\n");
		scanf("%d",&echo_back);
		printf("%d\n",echo_hd);
		printf("%d\n",echo_back);
		//debug
        count++;
    }
    end=clock();
	temp=count;
	double time_taken = (double)(end - start) / (double)(CLOCKS_PER_SEC);

    distance_calc= (time_taken*172)*100;
    printf("distance calculated is %f cm \n", distance_calc);
	if ((distance_calc >= dist_hd)|| (distance_calc >= dist_back)){
		buzzer=1;
		led=1;
		printf("buzzer is up!!!!");
		//apply delay of 1sec to inform the user
	}
	buzzer=0;
    led=0;
	printf("Waiting for %d sec time before next measurement\n",timeout);
	start=clock();//debug
    for(i=0;i<(timeout*2001000000);i++);//waiting in sec, 200=12usec
    end=clock();
    time_taken = (double)(end - start) / (double)(CLOCKS_PER_SEC);//debug
	printf("time taken is  %f s \n", time_taken);
	
    }
    
}
