%{

    #include<stdio.h>
    int keywords=0,identifiers=0,operators=0;

%}

%%

"#include<stdio.h>" { }
if|else|int|void|main|return {keywords++;}
[a-zA-Z][a-zA-Z0-9]* {identifiers++;}
"+"|"-"|"/"|"*"|"%"|"="|"("|")"|"{"|"}"|";" {operators++;}
\n|. { }

%%

int yywrap(void){
    return 1;
}


int main()
{

yyin = fopen("input.c","r");

yylex();
printf("No: of keywords : %d \n", keywords);
printf("No: of identifiers : %d \n", identifiers);
printf("No: of operators : %d \n", operators);
return 0;
}