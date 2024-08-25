
int main() {
  int timeout;
  int echo_hd,echo_back;
	float dist_hd,distance_calc, dist_back;
	int trigger,temp, buzzer,led;
  // Get the 4 bit input value from a potentiometer register and store it into variable
  //X30[3:0]=distance_pin
  int dist_hd_back;
  int clear_gp0_mask=0xFFFFFFF0;
  asm volatile (
    "and x10,x10,0\n\t"  //clear thi reg
    "and x10,x30,%0\n\t" //keeping only the 4 bit LSB enabled and masking others
    "ori %0,x10, 0\n\t" //x10 value is put into dist_hd_back variable
    :"r"(clear_gp0_mask),
    :"=r"(dist_hd_back)
  );
  
  //get the 4bit timeout value from potentiometer reg and store it into timeout variable 
  //X30[7:4]=timeout pin
   int timeout;
   int clear_gp1_mask=0xFFFFFF0F;
   asm volatile (
    "and x10,x10,0\n\t"  //clear thi reg
    "and x10,x30,%0\n\t" 
    "ori %0,x10, 0\n\t" //x10 value is put into dist_hd_back variable
    :"r"(clear_gp1_mask),
    :"=r"(timeout)
  );
    int count= 0;
	int i;

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
