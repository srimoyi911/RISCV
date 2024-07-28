#include<stdio.h>
#include<time.h>
int operation(int op,int a, int b )
{
    int out;
    switch(op){
    case(1): out=a+b;
    break;
    case(2): out=a-b;
    break;
    case(3):out=a/b;
    break;
    case(4):out=a*b;
    break;
    default: printf("invalid expression");
    }
    return out;
}



int main()
{
int a,b,op,out,z;
printf("enter two 4 bit number in integer format \n");
scanf("%d \n %d", &a,&b);
printf("enter the operation type: 1:add, 2:sub, 3:div, 4:mul \n");
scanf(" %d",&op);
z=operation(op,a,b);
printf("result is %d", z);
 
}
