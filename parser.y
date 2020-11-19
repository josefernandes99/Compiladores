{

module Parser where
import Lexer

}

%name parser
%tokentype { Token }
%error { parseError }

%token

bool                                                                     {BOOL}
true                                                                     {TRUE}
false                                                                    {FALSE}
int                                                                      {INT}
if                                                                       {IF}
for                                                                      {FOR}
return                                                                   {RETURN}
else                                                                     {ELSE}
print_int                                                                {PRINTINT}
scan_int                                                                 {SCANINT}
id                                                                       {ID $$}
num                                                                      {NUM $$}
","                                                                      {COMMA}
";"                                                                      {SEMI}
"++"                                                                     {INCR}
"+"                                                                      {SUM}
"--"                                                                     {DECR}
"-"                                                                      {SUB}
"*"                                                                      {MULT}
"/"                                                                      {DIV}
"%"                                                                      {MOD}
"=="                                                                     {EQUAL}
"!="                                                                     {DIFF}
">"                                                                      {BIGGER}
"<"                                                                      {LESS}
">="                                                                     {BIGGEROREQ}
"<="                                                                     {LESSOREQ}
"="                                                                      {ASSIGN}
"{"                                                                      {OPENBRACKETS}
"}"                                                                      {CLOSEBRACKETS}
"("                                                                      {OPENPARENTHESIS}
")"                                                                      {CLOSEPARENTHESIS}
while                                                                    {WHILE}
"!"                                                                      {NOT}


%right else
%right "="
%left "==" "!="
%left "<" ">" ">=" "<="
%left "+" "-"
%left "*" "/" "%"
%right "!" "++" "--"
%left "(" ")"

%%



Prog: GDefn                                                             {NewFunction_ $1}
    | GDefn Prog                                                        {NewFunction $1 $2}

GDefn: Type id "(" ")" "{" "}"                                          {FuncNoArgsNoStmts $1 $2}
     | Type id "(" ")" "{" Stmts "}"                                    {FuncNoArgsOnlyStmts $1 $2 $6}
     | Type id "(" GDefns ")" "{" "}"                                   {FuncOnlyArgsNoStmts $1 $2 $4}
     | Type id "(" GDefns ")" "{" Stmts "}"                            {FuncWithArgsAndStmts $1 $2 $4 $7}


GDefns: Type id                                                       {Arg_ $1 $2}
      | Type id "," GDefns                                           {Arg $1 $2 $4}

Stmt: Simple ";"                                                           {SimpleOp $1}
  | if "(" Exp ")" Stmt else Stmt                                      {IfElse $3 $5 $7}
  | if "(" Exp ")" "{" Stmts "}" else Stmt                             {IfBElse $3 $6 $9}
  | if "(" Exp ")" Stmt else "{" Stmts "}"                             {IfElseB $3 $5 $8}
  | if "(" Exp ")" "{" Stmts "}" else "{" Stmts "}"                     {IfBElseB $3 $6 $10}
  | if "(" Exp ")" Stmt %prec else                                             {If $3 $5}
  | if "(" Exp ")" "{" Stmts "}" %prec else                                    {IfB $3 $6}
  | while "(" Exp ")" Stmt                                            {While $3 $5}
  | while "(" Exp ")" "{" Stmts "}"                                    {WhileB $3 $6}
  | for "(" Simple ";" Exp ";" Simple ")" Stmt                            {For $3 $5 $7 $9}
  | for "(" Simple ";" Exp ";" Simple ")" "{" Stmts "}"                    {ForB $3 $5 $7 $10}
  | return Exp ";"                                                       {Return $2}
  | print_int "(" Exp ")" ";"                                             {PrintInt $3}


Stmts: Stmt                                                            {Statement_ $1}
     | Stmt Stmts                                                      {Statement $1 $2}

Simple: id "=" Exp                                                       {Assign $1 $3}
    | id "++"                                                      {Increment $1}
    | id "--"                                                           {Decrement $1}
    | Type Ids                                                     {DeclareVar $1 $2}


Ids: id                                                                 {Id_ $1}
   | id "," Ids                                                         {Id__ $1 $3}
   | id "=" Exp                                                      {AssignValue $1 $3}
   | id "=" Exp "," Ids                                             {AssignValue_ $1 $3 $5}

Type: int                                                                {Int}
  | bool                                                               {Bool}

Exp: num                                                                 {Num $1}
 | true                                                                {True_}
 | false                                                               {False_}
 | Exp "+" Exp                                                     {Add $1 $3}
 | Exp "-" Exp                                                        {Subtract $1 $3}
 | Exp "/" Exp                                                        {Divide $1 $3}
 | Exp "*" Exp                                                        {Multiply $1 $3}
 | Exp "%" Exp                                                        {Module $1 $3}
 | Exp "==" Exp                                                        {Equals $1 $3}
 | Exp ">" Exp                                                        {Greater $1 $3}
 | Exp "<" Exp                                                        {Lesser $1 $3}
 | Exp ">=" Exp                                                        {Greateroreq $1 $3}
 | Exp "<=" Exp                                                        {Lesseroreq $1 $3}
 | Exp "!=" Exp                                                        {Different $1 $3}
 | "!" Exp                                                            {Not $2}
 | id                                                                  {Id $1}
 | scan_int "(" ")"                                                   {ScanInt}
 | id "(" Exp ")"                                                       {FunctionCall $1 $3}


{
data Prog = NewFunction_ GDefn | NewFunction GDefn Prog deriving Show

data GDefn = FuncNoArgsNoStmts Type String | FuncNoArgsOnlyStmts Type String Stmts
           | FuncOnlyArgsNoStmts Type String GDefns | FuncWithArgsAndStmts Type String GDefns Stmts deriving Show

data GDefns = Arg_ Type String | Arg Type String GDefns deriving Show

data Stmt = SimpleOp Simple | IfElse Exp Stmt Stmt | IfBElse Exp Stmts Stmt
          | IfElseB Exp Stmt Stmts | IfBElseB Exp Stmts Stmts | If Exp Stmt | IfB Exp Stmts
          | While Exp Stmt | WhileB Exp Stmts | For Simple Exp Simple Stmt | ForB Simple Exp Simple Stmts
          | Return Exp | PrintInt Exp deriving Show

data Stmts = Statement_ Stmt | Statement Stmt Stmts deriving Show


data Simple = Assign String Exp | Increment String | Decrement String
            | DeclareVar Type Ids | FunctionCall__ String | FunctionCall___ String Exp | Array__ String | Array___ String Exp deriving Show

data Ids = Id_ String | Id__ String Ids | AssignValue String Exp | AssignValue_ String Exp Ids deriving Show

data Type = Int | Bool deriving Show

data Exp = Num Int | True_ | False_ | Add Exp Exp | Subtract Exp Exp | Divide Exp Exp
         | Multiply Exp Exp | Module Exp Exp | Equals Exp Exp | Greater Exp Exp | Lesser Exp Exp
         | Greateroreq Exp Exp | Lesseroreq Exp Exp | Different Exp Exp | Not Exp
         | Id String | FunctionCall String Exp | ScanInt deriving Show




parseError :: [Token] -> a
parseError toks = error ("parse error at " ++ show toks)
}
