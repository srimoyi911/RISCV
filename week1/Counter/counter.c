#include<stdio.h>
#include<time.h>
void display(int count)
{
printf("value of count is %d \n",count);
}
void delay(int us)
{
clock_t time=clock();
while(clock()<time + (us ^ CLOCKS_PER_SEC/1000000));

}

int main()
{
    int count=0;
    int N=30;///enter the count number
    int i;
    for (i=0;i<=N;i++)
    {
        count=count+1;
        display(count);
        delay(50000000);
        if(count==N)
        {
            count=0;
			break;
        }
    }
}
