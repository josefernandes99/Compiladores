{
module Lexer where
}
%wrapper "basic"
$alpha = [_a-zA-Z]
$digit = [0-9]
$white = [\ \t\n\r]


tokens :-
$white+                         ;
bool                            { \_ -> BOOL}
int                             { \_ -> INT}
true                            { \_ -> TRUE}
false                           { \_ -> FALSE}
while                           { \_ -> WHILE}
if                              { \_ -> IF}
else                            { \_ -> ELSE}
for                             { \_ -> FOR}
return                          { \_ -> RETURN}
print_int                       { \_ -> PRINTINT}
scan_int                        { \_ -> SCANINT}
"+"                             { \_ -> SUM}
"++"                            { \_ -> INCR}
"-"                             { \_ -> SUB}
"--"                            { \_ -> DECR}
"*"                             { \_ -> MULT}
"/"                             { \_ -> DIV}
"%"                             { \_ -> MOD}
"=="                            { \_ -> EQUAL}
"!="                            { \_ -> DIFF}
">"                             { \_ -> BIGGER}
"<"                             { \_ -> LESS}
">="                            { \_ -> BIGGEROREQ}
"<="                            { \_ -> LESSOREQ}
"="                             { \_ -> ASSIGN}
"{"                             { \_ -> OPENBRACKETS}
"}"                             { \_ -> CLOSEBRACKETS}
"("                             { \_ -> OPENPARENTHESIS}
")"                             { \_ -> CLOSEPARENTHESIS}
"!"                             { \_ -> NOT}
";"                             { \_ -> SEMI}
","                             { \_ -> COMMA}
"&&"                            { \_ -> AND}
$alpha($alpha|$digit)*          { \s -> ID s }
$digit+                         { \s -> NUM (read s)}

{
data Token =  BOOL
            | TRUE
            | FALSE
            | INT
            | IF
            | FOR
            | RETURN
            | ELSE
            | PRINTINT
            | SCANINT
            | ID String
            | NUM Int
            | COMMA
            | SEMI
            | INCR
            | SUM
            | DECR
            | SUB
            | MULT
            | DIV
            | MOD
            | EQUAL
            | DIFF
            | BIGGER
            | LESS
            | BIGGEROREQ
            | LESSOREQ
            | ASSIGN
            | OPENBRACKETS
            | CLOSEBRACKETS
            | OPENPARENTHESIS
            | CLOSEPARENTHESIS
            | WHILE
            | NOT
            | AND

            deriving (Eq, Show)

}
