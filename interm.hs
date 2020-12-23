module Interm where

import Parser
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State

type Temp = String
type Label = String

data Instr = MOVE Temp Temp
           | MOVEI Temp Int
           | LABEL Label
           | JUMP Label
           | RETURN Temp
           | FCALL Temp String [Temp]
           | ADD Temp Temp Temp
           | SUBTRACT Temp Temp Temp
           | MULTIPLY Temp Temp Temp
           | DIVIDE Temp Temp Temp
           | MODULE Temp Temp Temp
           | EQUALS Temp Temp Label Label
           | DIFFERENT Temp Temp Label Label
           | LESSEROREQ Temp Temp Label Label
           | GREATEROREQ Temp Temp Label Label
           | GREATER Temp Temp Label Label
           | LESSER Temp Temp Label Label
           deriving Show

type Table = Map String Temp
type Value = String

type Count = (Int, Int)

newTemp :: State Count Temp
newTemp = do (temps,labels)<-get
             put (temps+1,labels)
             return ("t"++show temps)

newLabel :: State Count Label
newLabel = do (temps,labels)<-get
              put (temps,labels+1)
              return("L"++show labels)

genProg :: Prog -> [Instr]
genProg a = let (t, count) = runState (tableProg Map.empty a) (0,0) in
            evalState (transProg t a) count

transProg :: Table -> Prog -> State Count [Instr]
transProg tabl (NewFunction a progs) = do code1 <- transFunction tabl a
                                          code2 <- transProg tabl progs
                                          return (code1 ++ code2)
transProg tabl (NewFunction_ a) = do code1 <- transFunction tabl a
                                     return (code1)

tableProg :: Table -> Prog -> State Count Table
tableProg tabl (NewFunction a functionlist) = do tableProg tabl functionlist
tableProg tabl (NewFunction_ a) = return tabl

transFunction :: Table -> GDefn -> State Count [Instr]
transFunction tabl (FuncNoArgsNoStmts typ id)
    =do return([])
transFunction tabl (FuncNoArgsOnlyStmts typ id stmts)
    =do code0 <- transStmtList tabl stmts
        return (code0)
transFunction tabl (FuncOnlyArgsNoStmts typ id gdefns)
    =do return([])
transFunction tabl (FuncWithArgsAndStmts typ id gdefns stmts)
    =do tabl1 <- tableArgs tabl gdefns
        code0 <- transStmtList tabl1 stmts
        return (code0)

tableArgs :: Table -> GDefns -> State Count Table
tableArgs tabl (Arg2 a b args)
    =do t0 <- newTemp
        tableArgs (Map.insert b t0 tabl) args
tableArgs tabl (Arg1 a b) = do t0 <- newTemp
                               return (Map.insert b t0 tabl)

transStmtList :: Table -> Stmts -> State Count [Instr]
transStmtList tabl (Statement stmt list)
    =do code0 <- transStmt tabl stmt
        code1 <- transStmtList tabl list
        return (code0 ++ code1)
transStmtList tabl (Statement_ stmt)
    =do code0 <- transStmt tabl stmt
        return (code0)

transStmt :: Table -> Stmt -> State Count [Instr]
transStmt tabl (Return e1)
    =do temp1 <- newTemp
        code0 <- transExp1 tabl e1 temp1
        return (code0 ++ [RETURN temp1])

transStmt tabl (If cond stmt)
    = do label1 <- newLabel
         label2 <- newLabel
         code1 <- transExp2 tabl cond label1 label2
         code2 <- transStmt tabl stmt
         return (code1 ++ [LABEL label1] ++ code2 ++ [LABEL label2])

transStmt tabl (IfB cond stmts)
    = do label1 <- newLabel
         label2 <- newLabel
         code1 <- transExp2 tabl cond label1 label2
         code2 <- transStmtList tabl stmts
         return (code1 ++ [LABEL label1] ++ code2 ++ [LABEL label2])

transStmt tabl (IfElse cond stmt1 stmt2)
     = do label1 <- newLabel
          label2 <- newLabel
          label3 <- newLabel
          code1 <- transExp2 tabl cond label1 label2
          code2 <- transStmt tabl stmt1
          code3 <- transStmt tabl stmt2
          return (code1 ++ [LABEL label1] ++ code2 ++ [JUMP label3] ++ [LABEL label2] ++ code3 ++ [LABEL label3])

transStmt tabl (IfBElse cond stmts1 stmt2)
     = do label1 <- newLabel
          label2 <- newLabel
          label3 <- newLabel
          code1 <- transExp2 tabl cond label1 label2
          code2 <- transStmtList tabl stmts1
          code3 <- transStmt tabl stmt2
          return (code1 ++ [LABEL label1] ++ code2 ++ [JUMP label3] ++ [LABEL label2] ++ code3 ++ [LABEL label3])

transStmt tabl (IfElseB cond stmt1 stmts2)
     = do label1 <- newLabel
          label2 <- newLabel
          label3 <- newLabel
          code1 <- transExp2 tabl cond label1 label2
          code2 <- transStmt tabl stmt1
          code3 <- transStmtList tabl stmts2
          return (code1 ++ [LABEL label1] ++ code2 ++ [JUMP label3] ++ [LABEL label2] ++ code3 ++ [LABEL label3])

transStmt tabl (IfBElseB cond stmts1 stmts2)
     = do label1 <- newLabel
          label2 <- newLabel
          label3 <- newLabel
          code1 <- transExp2 tabl cond label1 label2
          code2 <- transStmtList tabl stmts1
          code3 <- transStmtList tabl stmts2
          return (code1 ++ [LABEL label1] ++ code2 ++ [JUMP label3] ++ [LABEL label2] ++ code3 ++ [LABEL label3])

transExp1 :: Table -> Exp -> Temp -> State Count [Instr]
transExp1 tabl (Num n) dest
      = return [MOVEI dest n]

transExp1 tabl (Id x) dest
      = case Map.lookup x tabl of
      Just temp -> return [MOVE dest temp]
      Nothing -> error "invalid variable"

transExp2 :: Table -> Exp -> Label -> Label -> State Count [Instr]
transExp2 tabl (Equals e1 e2) labelt labelf
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExp1 tabl e1 temp1
           code2 <- transExp1 tabl e2 temp2
           return (code1 ++ code2 ++ [EQUALS temp1 temp2 labelt labelf])

transExp2 tabl (Lesser e1 e2) labelt labelf
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExp1 tabl e1 temp1
           code2 <- transExp1 tabl e2 temp2
           return (code1 ++ code2 ++ [LESSER temp1 temp2 labelt labelf])

transExp2 tabl (Greater e1 e2) labelt labelf
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExp1 tabl e1 temp1
           code2 <- transExp1 tabl e2 temp2
           return (code1 ++ code2 ++ [GREATER temp1 temp2 labelt labelf])

transExp2 tabl (Greateroreq e1 e2) labelt labelf
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExp1 tabl e1 temp1
           code2 <- transExp1 tabl e2 temp2
           return (code1 ++ code2 ++ [GREATEROREQ temp1 temp2 labelt labelf])

transExp2 tabl (Lesseroreq e1 e2) labelt labelf
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExp1 tabl e1 temp1
           code2 <- transExp1 tabl e2 temp2
           return (code1 ++ code2 ++ [LESSEROREQ temp1 temp2 labelt labelf])

transExp3 :: Table -> Exp -> Temp -> State Count [Instr]
transExp3 tabl (Add e1 e2) dest
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExp1 tabl e1 temp1
           code2 <- transExp1 tabl e2 temp2
           return (code1 ++ code2 ++ [ADD dest temp1 temp2])

transExp3 tabl (Subtract e1 e2) dest
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExp1 tabl e1 temp1
           code2 <- transExp1 tabl e2 temp2
           return (code1 ++ code2 ++ [SUBTRACT dest temp1 temp2])

transExp3 tabl (Multiply e1 e2) dest
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExp1 tabl e1 temp1
           code2 <- transExp1 tabl e2 temp2
           return (code1 ++ code2 ++ [MULTIPLY dest temp1 temp2])

transExp3 tabl (Divide e1 e2) dest
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExp1 tabl e1 temp1
           code2 <- transExp1 tabl e2 temp2
           return (code1 ++ code2 ++ [DIVIDE dest temp1 temp2])

transExp3 tabl (Module e1 e2) dest
      = do temp1 <- newTemp
           temp2 <- newTemp
           code1 <- transExp1 tabl e1 temp1
           code2 <- transExp1 tabl e2 temp2
           return (code1 ++ code2 ++ [MODULE dest temp1 temp2])
