
int main() {
  int timeout;
  int echo_hd,echo_back;
	float dist_hd,distance_calc, dist_back;
	int trigger,temp, buzzer,led;
  // Get the input from a potentiometer(that is, from variables dist_hd and dist_back) and store into RISC register
  //X30[0]=distance_pin
  int dist_hd_back;
  int clear_gp0_mask=0xFFFFFFFE;
  asm volatile (
    "and x30,x30,%1\n\t" //keeping only the LSB enabled and masking others
    "and x10, x10,x0\n\t"
    "srli x10,x30, 0\n\t" //shift right with zero bits, as LSB is only enabled
    "andi x30,x10, %0\n\t" //take the value of dist_hd_back var, and it with LSB of x10 and store it into x30 
    :"r"(dist_hd_back),"r"(clear_gp0_mask)
    : "x30" // ?? output of this asm  
  );
  
  //get the input of timeout value from potentiometer
    printf("Enter the user defined timeout in sec\n");
    scanf("%d",&timeout);
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
