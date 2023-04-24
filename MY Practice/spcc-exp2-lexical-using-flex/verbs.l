%{

    #include<stdio.h>
    #include<stdlib.h>
    int verbs=0, adverbs = 0, adjectives=0;


%}

%%

.(ing)|(to) {verbs++;}
.(ly)  {adverbs++;}
.(ful)|.(able)|.(ous)|.(less) {adjectives++;}
.|\n {};

%%

int yywrap(void){
    return 1;
}

int main()
{
    yyin = fopen("input.txt","r");

    yylex();
    printf("\nCount of verbs : %d", verbs);
    printf("\nCount of adjectives : %d", adjectives);
    printf("\nCount of adverbs : %d", adverbs);
    return 0;
}
