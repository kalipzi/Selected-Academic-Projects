%{
#include <stdio.h>
#include <string.h>
#include "simple.tab.h"
extern int yylval;
int st=0 ;
%}

digit[0-9]
letter[a-zA-Z]
char ([^'\\"]|[\\][tbrnar\\'"])
delim [\n\t\r\b,:]
id (({letter}+{digit}{1,2}({letter}+)*)|({letter}+({digit}{1,2}{letter}{2,5}{digit}{1,2})*))
string (["].*["]|["].*["](\r)*(\n)*[+](\r)*(\n)*["].*["])*
int  ({digit}[l]?|[1-7]{digit}[l]?|[8][0-2]|[8-9]{digit}l|[1][0-5]{digit}l|[1][6][0-2]l)
float ([+-]?[1-9]{digit}*\.{digit}*[1-9][E]?|[+-]?[1-9]{digit}*[E]?|[-][0]\.[0][E]?|[1-9]{digit}*\.[0][E]?)
comment ([[/][*](.)*[*][/]|[//](.)*(\n))
%%

"program" {return (PROGRAM_KW);}
"{" {printf("%s \t Curly_Braces_open \n", yytext); yylval=atof(yytext);}
"}" { yylval=yytext[0];}
"int" {return (INT_KW);}
"'" {printf("%s \t comma \n", yytext); yylval=atof(yytext);}
";" {printf("%s \t semicolon \n", yytext);  yylval=atof(yytext);}
"char" {printf("%s \t CHAR_KW \n", yytext); yylval=atof(yytext);return (BOOL_KW);}
"void" {printf("%s \t VOID_KW \n", yytext); yylval=atof(yytext);return (VOID_KW);}
"float" {printf("%s \t FLOAT_KW \n", yytext);  yylval=atof(yytext);return (FLOAT_KW);}
"if" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (IF_KW);}
"for" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (FOR_KW);}
"switch" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (SWITCH_KW);}
"return" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (RETURN_KW);}
"case" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (CASE_KW);}
"break" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (BREAK_KW);}
"while" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (WHILE_KW);}
"continue" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (CONTINUE_KW);}
"read" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (READ_KW);}
"write" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (WRITE_KW);}
"default" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (DEFAULT_KW);}
"then" {printf("%s \t IF_KW \n", yytext); yylval=atof(yytext);return (THEN_KW);}
"(" {printf("%s \t par_open \n", yytext); yylval=atof(yytext);}
")" {printf("%s \t par_close \n", yytext); yylval=atof(yytext);}
"==" {printf("%s \t relop E \n", yytext); yylval=atof(yytext);return (EQ);}
"|" {printf("%s \t op OR_ELSE \n", yytext); yylval=atof(yytext);return (OR_ELSE);}
"<" {printf("%s \t relop LT \n", yytext); yylval=atof(yytext);return (LT);}
">" {printf("%s \t relop GT \n", yytext); yylval=atof(yytext);return (GT);}
"||" {printf("%s \t op OR \n", yytext); yylval=atof(yytext);return (OR);}
"<=" {printf("%s \t relop LE \n", yytext); yylval=atof(yytext);return (LE);}
">=" {printf("%s \t relop GE \n", yytext); yylval=atof(yytext);return (GE);}
"!=" {printf("%s \t relop NE \n", yytext); yylval=atof(yytext);return (NE);}
"&&" {printf("%s \t op AND \n", yytext); yylval=atof(yytext);return (AND);}
"*" {printf("%s \t op MUL \n", yytext);yylval=atof(yytext);return (MULT);}
"%" {printf("%s \t REM \n", yytext);yylval=atof(yytext);return (REM);}
"!" {printf("%s \t REM \n", yytext);yylval=atof(yytext);return (NOT);}
"-" {printf("%s \t op MINUS \n", yytext);yylval=atof(yytext);return (MINUS);}
"/" {printf("%s \t op DIV \n", yytext);yylval=atof(yytext);return (DIV);}
"&" {printf("%s \t op AND_THEN \n", yytext); yylval=atof(yytext);return (AND_THEN);}
"true" {printf("1 \t bool_costant \n "); yylval=1;return (BOOL_CONSTANT);}
"false" {printf("0 \t bool_constant \n"); yylval=0;return (BOOL_CONSTANT);}
{string} {char *pch; pch = strtok(yytext,"+ \"	\n"); while (pch != NULL){ printf ("%s",pch); pch = strtok (NULL,"\"	\n +");} yylval=atof(yytext);return (STRING_CONSTANT);}
'({char})' {printf("%s \t char_constant \n", yytext);yylval=atof(yytext);return (CHAR_CONSTANT);}
{int}  {printf("%s int_constant \n", yytext);yylval=atof(yytext);return (INT_CONSTANT);}
{float} {printf("%s \t float \n", yytext);yylval=atof(yytext);return (FLOAT_CONSTANT);}
{comment} {printf("");yylval=atof(yytext);}
{id}  {st++;printf("%s \t identifier \t %d \n",yytext ,st);yylval=atof(yytext);return (ID);}
"+" {return (PLUS);}
{delim} {printf("%s \t delimeter \n", yytext);yylval=yytext[0];}

%% 


