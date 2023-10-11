%{
/*********************************************
YACC file
基础程序
Date:2023/9/19
forked SherryXiye
**********************************************/
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#ifndef YYSTYPE
#define YYSTYPE double
#endif
int yylex();
int lineno = 1;
int tokenval = 0 ;
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);
%}

%token PLUS MINUS TIMES DIVIDE LPAREN RPAREN INTEGER 
//注意先后定义的优先级区别
%left PLUS MINUS
%left TIMES DIVIDE
%right UMINUS         

%%


lines   :       lines expr '\n' { }
        |       lines '\n'
        |
        ;

expr    :       expr PLUS expr   { $$=$1+$3;printf("+"); }
        |       expr MINUS expr   { $$=$1-$3;printf("-"); }
        |       expr TIMES expr   { $$=$1*$3;printf("*") ;}
        |       expr DIVIDE expr   { $$=$1/$3; printf("/");}
        |       LPAREN expr RPAREN      {printf("("); $$=$2;printf(")");}
        |       MINUS expr %prec UMINUS   {printf("-");$$=-$2;}
        |       NUMBER
        ;
    
NUMBER  :       INTEGER          {$$=tokenval;printf("%d",tokenval);}
        ;

%%

// programs section

int yylex()
{
    int t;
    while (1) {
        t = getchar();
        if (t == ' ' || t == '\t')
            ;
        else if (t == '\n')
            return '\n';
        else if (isdigit(t)) {
            tokenval = 0;
            while (isdigit(t)) {
                tokenval = tokenval * 10 + t - '0';
                t = getchar();
            }
            ungetc(t, stdin);
            
            return INTEGER;
        }
        else {
            switch(t) {
                case '+': return PLUS;
                case '-': return MINUS;
                case '*': return TIMES;
                case '/': return DIVIDE;
                case '(': return LPAREN;
                case ')': return RPAREN;
                default: 
                    tokenval = 0; 
                    return t;
            }
        }
    }
}

int main(void)
{
    yyin=stdin;
    do{
        yyparse();
    }while(!feof(yyin));
    return 0;
}
void yyerror(const char* s){
    fprintf(stderr,"Parse error: %s\n",s);
    exit(1);
}