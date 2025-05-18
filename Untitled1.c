#include<stdio.h>


int main()
{
    int i,j,n;
    printf("Input a digit: ");

   while(1){
        scanf("%d", &n);
    if(n%2==0){
        printf("Your number is even\n");
        break;
    } else {
        printf("Your number is odd\n");
        continue;
    }
   }



    printf("Hellow world\n");

    printf("give your gender: ");
    printf("For women press 1, For man press 2: ");
    int gen;
    scanf("%d", &gen);

    switch(gen){
case 1:
    women();
    break;
case 2:
    man();
    break;

default:
    printf("Your have insert something else");

    }

    /*for(i=0; i<n; i++){
        for(j=0; j<i; j++){
            printf("%d ", i);
            i+1;
        }printf("\n");
    }*/



    return 0;
}

void man()
{
     printf("\t\t\t\t  O  \n");
     printf("\t\t\t\tOOOOO \n");
     printf("\t\t\t\t  O \n");
     printf("\t\t\t\t  O \n");
     printf("\t\t\t\tOOOOO \n");
}

void women()
{
     printf("\t\t\t\t  O  \n");
     printf("\t\t\t\tO O O \n");
     printf("\t\t\t\t  O \n");
     printf("\t\t\t\t OOO \n");
     printf("\t\t\t\t  O \n");
}


