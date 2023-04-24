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

int main(int argc, char** argv)
{
    if (argc > 1)
    {
        FILE *file;
        file = fopen(argv[1],"r");
        if(!file){
            fprintf(stderr, "Could not open %s\n", argv[1]);
            exit(1);
        }
        yyin = file;
    }

    yylex();
    printf("\nCount of verbs : %d", verbs);
    printf("\nCount of adjectives : %d", adjectives);
    printf("\nCount of adverbs : %d", adverbs);
    return 0;
}