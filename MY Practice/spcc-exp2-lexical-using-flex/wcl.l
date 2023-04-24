%{

    #include<stdio.h>
    int wordCount=0,lineCount=1,charCount=0,spaceCount=0;

%}

%%

[\n] {lineCount++;}
[  ] {spaceCount++;}
[^\n]+ {wordCount++; charCount+=yyleng;}

%%

int yywrap(void){
    return 1;
}


int main()
{

yyin = fopen("input.txt","r");

yylex();
printf("No: of Chararacter : %d \n", charCount);
printf("No: of Words : %d \n", wordCount);
printf("No: of Lines : %d \n", lineCount);
printf("No: of Spaces : %d \n", spaceCount);
return 0;
}
