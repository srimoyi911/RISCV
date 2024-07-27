#include<stdio.h>
#include<time.h>

int main()
{

    int R=3;
    int C=4;
    int R1=4;
    int C1=3;
    int mat1[R][C];
    int mat2[R1][C1];
    int mat[R][C1];
    //int mat1[3][2] = { { 0, 1 }, { 2, 3 }, { 4, 5 } };
   for (int i = 0; i < R; i++) {
        for (int j = 0; j <C; j++) {
            mat1[i][j]=i+j;
            printf("Element at mat1[%d][%d]: ", i, j);
            printf("%d\n", mat1[i][j]);
        }
    }
    for (int u=0;u<R1;u++)
    {
        for (int v=0;v<C1;v++)
        {
        mat2[u][v]=u+v;
        printf("Element at mat2[%d][%d]: ", u, v);
        printf("%d\n", mat2[u][v]);
        }
    }
    printf("start matrix multiplication \n");
    
   
    
    for (int x=0;x<R;x++)
    {
         if(C!=R1){
          printf("invalid rows and columns for matrix multiplication");
          break;
         }
        for (int z=0;z<C1;z++){
        mat[x][z]=0;
        for (int k=0; k<R1 ; k++)
        {
        mat[x][z]+=mat1[x][k]*mat2[k][z];
        }
        printf("Element of multiplied matrix result mat[%d][%d]: ", x, z);
        printf(" %d\n", mat[x][z]);
    }
    }
 
}

