%defines
%{
extern int yylex();
extern void yyerror();
%}


%token PROGRAM_KW
%token VOID_KW
%token INT_KW
%token CHAR_KW
%token FLOAT_KW
%token BOOL_KW
%token RETURN_KW
%token CASE_KW
%token THEN_KW
%token FOR_KW
%token IF_KW
%token CONTINUE_KW
%token BREAK_KW
%token INT_CONSTANT
%token FLOAT_CONSTANT
%token CHAR_CONSTANT
%token BOOL_CONSTANT
%token STRING_CONSTANT
%token DELIM
%token ID
%token PLUS
%token MINUS
%token MULT
%token DIV
%token REM
%token LT
%token GT
%token LE
%token GE
%token NE
%token AND
%token AND_THEN
%token OR
%token OR_ELSE
%token IF_KW
%token FOR_KW
%token READ_KW
%token WRITE_KW
%token CASE_KW
%token CONTINUE_KW
%token THEN_KW
%token SWITCH_KW
%token RETURN_KW
%token WHILE_KW
%token BREAK_KW
%token DEFAULT_KW
%token ELSE_KW
%token EQ
%token NOT

%start program
%%
program : PROGRAM_KW ID '{' field_decl_list_block method_decl_list '}' ;
field_decl_list_block : '{' field_decl_list '}' ;
field_decl_list : field_decl field_decl_list | /*lambda*/ ;
field_decl : type field_name_list ';' ;
field_name_list : field_name ',' field_name_list | field_name ;
field_name : ID '[' INT_CONSTANT ']' | ID ;
method_decl_list : method_decl method_decl_list | /*lambda*/ ;
method_decl : return_type ID '(' formal_parameter_list ')' block ;
formal_parameter_list : argumant_list | /*lambda*/ ;
argumant_list : type ID ',' argumant_list | type ID ;
method_call : ID '(' actual_parameters ')' ;
actual_parameters : actual_parameter_list | /*lambda*/ ;
actual_parameter_list : expr ',' actual_parameter_list | expr ;
type : INT_KW | FLOAT_KW | CHAR_KW | BOOL_KW;
constant : INT_CONSTANT | FLOAT_CONSTANT | CHAR_CONSTANT | BOOL_CONSTANT;
return_type : type | VOID_KW ;
return_expr : expr | /*lambda*/ ;
block : '{' statement_list '}' ;
statement_list : statement statement_list | /*lambda*/ ;
statement : field_decl |
assignment ';' |
method_call ';' |
IF_KW '(' expr ')' THEN_KW block ';' |
IF_KW '(' expr ')' THEN_KW block ELSE_KW block ';' |
WHILE_KW '(' expr ')' block ';' |
FOR_KW '(' for_initialize ';' expr ';' assignment ')' block ';' |
SWITCH_KW '(' ID ')' '{' case_statements '}' ';' |
RETURN_KW return_expr ';' |
BREAK_KW ';' |
CONTINUE_KW ';' |
block |
READ_KW '(' ID ')' ';' |
WRITE_KW '(' write_parameter ')' ';' |
';' ;
assignment : location '=' expr | location ;
location : ID | ID '[' expr ']' ;
for_initialize : assignment | /*lambda*/ ;
case_statements : CASE_KW constant ':' statement case_statements|
DEFAULT_KW ':' statement |/*lambda*/;
write_parameter : expr | STRING_CONSTANT ;
expr : location | constant | '(' expr ')' | method_call | operational_expr ;
operational_expr : expr LT expr |
expr LE expr |
expr GT expr |
expr GE expr |
expr EQ expr |
expr NE expr |
expr AND expr | expr OR expr |
expr AND_THEN expr |
expr OR_ELSE expr |
expr PLUS expr |
expr MINUS expr |
expr MULT expr |
expr DIV expr |
expr REM expr |
MINUS expr |
NOT expr ;


%%


main(){
FILE *fp;
if((fp = fopen("rp.txt","r+")) == null){

printf("no such afile directory\n");
exit(1);}
yyrestart(fp);
while(yylex!=0)
return(yyparse());

}

void yyerror()
{
  printf("ERROR");

}
yywrap()
{
  return(1);
}