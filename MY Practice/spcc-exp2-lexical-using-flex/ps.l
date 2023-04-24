%{
    #include<stdio.h>
    int printt=0, scann=0;

%}

%%

"printf"  {printt++;}
"scanf"  {scann++;}

%%

int yywrap(void){
    return 1;
}


int main()
{
yyin = fopen("input.c","r");
yylex();
printf("\nNo: of scanfs : %d \n", printt);
printf("No: of printfs : %d \n", scann);
return 0;
}