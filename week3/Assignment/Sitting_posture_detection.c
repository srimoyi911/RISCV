#include <stdio.h>
#include<time.h>
int main() {
    int timeout;
    int echo_hd,echo_back;
	float dist_hd,distance_calc, dist_back;
	int trigger,temp, buzzer,led;
	clock_t start,end;
    printf("Enter the user defined head distance in cm \n");
    scanf("%f",&dist_hd);
	printf("Enter the user defined back distance in cm \n");
    scanf("%f",&dist_back);
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