

int multiply(int a, int b) {
    int out = 0;
    
    if(b== 0)
    return 0;
 
    /* Add x one by one */
    if(b > 0 )
    return (a + multiply(a, b-1));
 
        
    }
int division(int dividend, int divisor) {
    int quotient = 0;
    
    while (dividend >= divisor) {
        dividend -= divisor;
        quotient++;
        
    }

    return quotient;
}
int operation(int op,int a, int b )
{
    int out;
    switch(op){
    case(1): out=a+b;
    break;
    case(2): out=a-b;
    break;
    case(3):out=division(a,b);
    break;
    case(4):out=multiply(a,b);
    break;
    }
    return out;
}



int main()
{
int a,b,op,out,z;
a=32;
b=2;
op=1;
z=operation(op,a,b);
op=2;
z=operation(op,a,b);
op=3;
z=operation(op,a,b);
op=4;
z=operation(op,a,b);

 
}
