{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,370) ([36864,0,0,36864,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,36864,0,0,0,0,0,0,0,1024,36864,0,2048,0,0,2048,0,64,0,0,0,256,36864,87,4608,0,256,0,0,0,256,36864,87,4608,36864,0,0,36864,87,4096,0,0,512,0,512,0,0,64,0,0,0,1024,0,0,1024,24576,224,8192,0,0,1024,0,5120,128,0,0,0,0,0,1024,24576,224,8192,0,0,0,0,0,0,24576,224,8192,24576,224,8192,0,59904,16511,0,0,0,0,0,0,0,0,1024,0,0,1024,0,0,0,24576,224,8192,36864,64,0,24576,224,8192,0,0,0,0,256,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,64,0,24576,224,8192,0,59392,18559,0,512,0,0,0,0,24576,224,8192,0,0,2048,0,0,0,24576,224,8192,24576,224,8192,24576,224,8192,24576,224,8192,24576,224,8192,24576,224,8192,24576,224,8192,24576,224,8192,24576,224,8192,24576,224,8192,24576,224,8192,24576,224,8192,0,59392,18559,0,59392,16511,0,59392,18559,36864,87,4352,0,512,0,0,59392,127,0,59392,1,0,59392,1,0,59392,1,0,59392,1,0,59392,121,0,59392,121,0,0,0,0,0,0,0,0,0,0,49152,1,0,49152,1,0,0,0,0,59392,18559,24576,224,8192,36864,87,4352,0,59648,16511,0,0,0,0,64,0,0,8,0,36864,87,4096,0,59904,16511,0,0,0,0,0,0,0,0,0,36864,87,4096,0,0,512,36864,64,0,0,0,512,36864,87,4352,0,0,0,0,0,0,36864,87,4096,0,8,0,0,0,2048,0,0,0,36864,87,4352,36864,87,4352,0,0,512,0,0,0,0,0,0,36864,87,4096,0,0,0,36864,87,4096,0,0,512,0,0,512,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Prog","GDefn","GDefns","Stmt","Stmts","Simple","Ids","Type","Exp","bool","true","false","int","if","for","return","else","print_int","scan_int","id","num","\",\"","\";\"","\"++\"","\"+\"","\"--\"","\"-\"","\"*\"","\"/\"","\"%\"","\"==\"","\"!=\"","\">\"","\"<\"","\">=\"","\"<=\"","\"=\"","\"{\"","\"}\"","\"(\"","\")\"","while","\"!\"","\"&&\"","%eof"]
        bit_start = st * 48
        bit_end = (st + 1) * 48
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..47]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (13) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (4) = happyGoto action_6
action_0 (5) = happyGoto action_7
action_0 (11) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (13) = happyShift action_4
action_1 (16) = happyShift action_5
action_1 (5) = happyGoto action_2
action_1 (11) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 (23) = happyShift action_9
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_33

action_5 _ = happyReduce_32

action_6 (48) = happyAccept
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (13) = happyShift action_4
action_7 (16) = happyShift action_5
action_7 (4) = happyGoto action_8
action_7 (5) = happyGoto action_7
action_7 (11) = happyGoto action_3
action_7 _ = happyReduce_1

action_8 _ = happyReduce_2

action_9 (43) = happyShift action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (13) = happyShift action_4
action_10 (16) = happyShift action_5
action_10 (44) = happyShift action_13
action_10 (6) = happyGoto action_11
action_10 (11) = happyGoto action_12
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (44) = happyShift action_16
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (23) = happyShift action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (41) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (13) = happyShift action_4
action_14 (16) = happyShift action_5
action_14 (17) = happyShift action_23
action_14 (18) = happyShift action_24
action_14 (19) = happyShift action_25
action_14 (21) = happyShift action_26
action_14 (23) = happyShift action_27
action_14 (42) = happyShift action_28
action_14 (45) = happyShift action_29
action_14 (7) = happyGoto action_19
action_14 (8) = happyGoto action_20
action_14 (9) = happyGoto action_21
action_14 (11) = happyGoto action_22
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (25) = happyShift action_18
action_15 _ = happyReduce_7

action_16 (41) = happyShift action_17
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (13) = happyShift action_4
action_17 (16) = happyShift action_5
action_17 (17) = happyShift action_23
action_17 (18) = happyShift action_24
action_17 (19) = happyShift action_25
action_17 (21) = happyShift action_26
action_17 (23) = happyShift action_27
action_17 (42) = happyShift action_51
action_17 (45) = happyShift action_29
action_17 (7) = happyGoto action_19
action_17 (8) = happyGoto action_50
action_17 (9) = happyGoto action_21
action_17 (11) = happyGoto action_22
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (13) = happyShift action_4
action_18 (16) = happyShift action_5
action_18 (6) = happyGoto action_49
action_18 (11) = happyGoto action_12
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (13) = happyShift action_4
action_19 (16) = happyShift action_5
action_19 (17) = happyShift action_23
action_19 (18) = happyShift action_24
action_19 (19) = happyShift action_25
action_19 (21) = happyShift action_26
action_19 (23) = happyShift action_27
action_19 (45) = happyShift action_29
action_19 (7) = happyGoto action_19
action_19 (8) = happyGoto action_48
action_19 (9) = happyGoto action_21
action_19 (11) = happyGoto action_22
action_19 _ = happyReduce_22

action_20 (42) = happyShift action_47
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (26) = happyShift action_46
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (23) = happyShift action_45
action_22 (10) = happyGoto action_44
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (43) = happyShift action_43
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (43) = happyShift action_42
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (14) = happyShift action_36
action_25 (15) = happyShift action_37
action_25 (22) = happyShift action_38
action_25 (23) = happyShift action_39
action_25 (24) = happyShift action_40
action_25 (46) = happyShift action_41
action_25 (12) = happyGoto action_35
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (43) = happyShift action_34
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (27) = happyShift action_31
action_27 (29) = happyShift action_32
action_27 (40) = happyShift action_33
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_3

action_29 (43) = happyShift action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (14) = happyShift action_36
action_30 (15) = happyShift action_37
action_30 (22) = happyShift action_38
action_30 (23) = happyShift action_39
action_30 (24) = happyShift action_40
action_30 (46) = happyShift action_41
action_30 (12) = happyGoto action_75
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_25

action_32 _ = happyReduce_26

action_33 (14) = happyShift action_36
action_33 (15) = happyShift action_37
action_33 (22) = happyShift action_38
action_33 (23) = happyShift action_39
action_33 (24) = happyShift action_40
action_33 (46) = happyShift action_41
action_33 (12) = happyGoto action_74
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (14) = happyShift action_36
action_34 (15) = happyShift action_37
action_34 (22) = happyShift action_38
action_34 (23) = happyShift action_39
action_34 (24) = happyShift action_40
action_34 (46) = happyShift action_41
action_34 (12) = happyGoto action_73
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (26) = happyShift action_60
action_35 (28) = happyShift action_61
action_35 (30) = happyShift action_62
action_35 (31) = happyShift action_63
action_35 (32) = happyShift action_64
action_35 (33) = happyShift action_65
action_35 (34) = happyShift action_66
action_35 (35) = happyShift action_67
action_35 (36) = happyShift action_68
action_35 (37) = happyShift action_69
action_35 (38) = happyShift action_70
action_35 (39) = happyShift action_71
action_35 (47) = happyShift action_72
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_35

action_37 _ = happyReduce_36

action_38 (43) = happyShift action_59
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (43) = happyShift action_58
action_39 _ = happyReduce_50

action_40 _ = happyReduce_34

action_41 (14) = happyShift action_36
action_41 (15) = happyShift action_37
action_41 (22) = happyShift action_38
action_41 (23) = happyShift action_39
action_41 (24) = happyShift action_40
action_41 (46) = happyShift action_41
action_41 (12) = happyGoto action_57
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (13) = happyShift action_4
action_42 (16) = happyShift action_5
action_42 (23) = happyShift action_27
action_42 (9) = happyGoto action_56
action_42 (11) = happyGoto action_22
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (14) = happyShift action_36
action_43 (15) = happyShift action_37
action_43 (22) = happyShift action_38
action_43 (23) = happyShift action_39
action_43 (24) = happyShift action_40
action_43 (46) = happyShift action_41
action_43 (12) = happyGoto action_55
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_27

action_45 (25) = happyShift action_53
action_45 (40) = happyShift action_54
action_45 _ = happyReduce_28

action_46 _ = happyReduce_9

action_47 _ = happyReduce_4

action_48 _ = happyReduce_23

action_49 _ = happyReduce_8

action_50 (42) = happyShift action_52
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_5

action_52 _ = happyReduce_6

action_53 (23) = happyShift action_45
action_53 (10) = happyGoto action_95
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (14) = happyShift action_36
action_54 (15) = happyShift action_37
action_54 (22) = happyShift action_38
action_54 (23) = happyShift action_39
action_54 (24) = happyShift action_40
action_54 (46) = happyShift action_41
action_54 (12) = happyGoto action_94
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (28) = happyShift action_61
action_55 (30) = happyShift action_62
action_55 (31) = happyShift action_63
action_55 (32) = happyShift action_64
action_55 (33) = happyShift action_65
action_55 (34) = happyShift action_66
action_55 (35) = happyShift action_67
action_55 (36) = happyShift action_68
action_55 (37) = happyShift action_69
action_55 (38) = happyShift action_70
action_55 (39) = happyShift action_71
action_55 (44) = happyShift action_93
action_55 (47) = happyShift action_72
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (26) = happyShift action_92
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_49

action_58 (14) = happyShift action_36
action_58 (15) = happyShift action_37
action_58 (22) = happyShift action_38
action_58 (23) = happyShift action_39
action_58 (24) = happyShift action_40
action_58 (46) = happyShift action_41
action_58 (12) = happyGoto action_91
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (44) = happyShift action_90
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_20

action_61 (14) = happyShift action_36
action_61 (15) = happyShift action_37
action_61 (22) = happyShift action_38
action_61 (23) = happyShift action_39
action_61 (24) = happyShift action_40
action_61 (46) = happyShift action_41
action_61 (12) = happyGoto action_89
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (14) = happyShift action_36
action_62 (15) = happyShift action_37
action_62 (22) = happyShift action_38
action_62 (23) = happyShift action_39
action_62 (24) = happyShift action_40
action_62 (46) = happyShift action_41
action_62 (12) = happyGoto action_88
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (14) = happyShift action_36
action_63 (15) = happyShift action_37
action_63 (22) = happyShift action_38
action_63 (23) = happyShift action_39
action_63 (24) = happyShift action_40
action_63 (46) = happyShift action_41
action_63 (12) = happyGoto action_87
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (14) = happyShift action_36
action_64 (15) = happyShift action_37
action_64 (22) = happyShift action_38
action_64 (23) = happyShift action_39
action_64 (24) = happyShift action_40
action_64 (46) = happyShift action_41
action_64 (12) = happyGoto action_86
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (14) = happyShift action_36
action_65 (15) = happyShift action_37
action_65 (22) = happyShift action_38
action_65 (23) = happyShift action_39
action_65 (24) = happyShift action_40
action_65 (46) = happyShift action_41
action_65 (12) = happyGoto action_85
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (14) = happyShift action_36
action_66 (15) = happyShift action_37
action_66 (22) = happyShift action_38
action_66 (23) = happyShift action_39
action_66 (24) = happyShift action_40
action_66 (46) = happyShift action_41
action_66 (12) = happyGoto action_84
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (14) = happyShift action_36
action_67 (15) = happyShift action_37
action_67 (22) = happyShift action_38
action_67 (23) = happyShift action_39
action_67 (24) = happyShift action_40
action_67 (46) = happyShift action_41
action_67 (12) = happyGoto action_83
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (14) = happyShift action_36
action_68 (15) = happyShift action_37
action_68 (22) = happyShift action_38
action_68 (23) = happyShift action_39
action_68 (24) = happyShift action_40
action_68 (46) = happyShift action_41
action_68 (12) = happyGoto action_82
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (14) = happyShift action_36
action_69 (15) = happyShift action_37
action_69 (22) = happyShift action_38
action_69 (23) = happyShift action_39
action_69 (24) = happyShift action_40
action_69 (46) = happyShift action_41
action_69 (12) = happyGoto action_81
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (14) = happyShift action_36
action_70 (15) = happyShift action_37
action_70 (22) = happyShift action_38
action_70 (23) = happyShift action_39
action_70 (24) = happyShift action_40
action_70 (46) = happyShift action_41
action_70 (12) = happyGoto action_80
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (14) = happyShift action_36
action_71 (15) = happyShift action_37
action_71 (22) = happyShift action_38
action_71 (23) = happyShift action_39
action_71 (24) = happyShift action_40
action_71 (46) = happyShift action_41
action_71 (12) = happyGoto action_79
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (14) = happyShift action_36
action_72 (15) = happyShift action_37
action_72 (22) = happyShift action_38
action_72 (23) = happyShift action_39
action_72 (24) = happyShift action_40
action_72 (46) = happyShift action_41
action_72 (12) = happyGoto action_78
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (28) = happyShift action_61
action_73 (30) = happyShift action_62
action_73 (31) = happyShift action_63
action_73 (32) = happyShift action_64
action_73 (33) = happyShift action_65
action_73 (34) = happyShift action_66
action_73 (35) = happyShift action_67
action_73 (36) = happyShift action_68
action_73 (37) = happyShift action_69
action_73 (38) = happyShift action_70
action_73 (39) = happyShift action_71
action_73 (44) = happyShift action_77
action_73 (47) = happyShift action_72
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (28) = happyShift action_61
action_74 (30) = happyShift action_62
action_74 (31) = happyShift action_63
action_74 (32) = happyShift action_64
action_74 (33) = happyShift action_65
action_74 (34) = happyShift action_66
action_74 (35) = happyShift action_67
action_74 (36) = happyShift action_68
action_74 (37) = happyShift action_69
action_74 (38) = happyShift action_70
action_74 (39) = happyShift action_71
action_74 (47) = happyShift action_72
action_74 _ = happyReduce_24

action_75 (28) = happyShift action_61
action_75 (30) = happyShift action_62
action_75 (31) = happyShift action_63
action_75 (32) = happyShift action_64
action_75 (33) = happyShift action_65
action_75 (34) = happyShift action_66
action_75 (35) = happyShift action_67
action_75 (36) = happyShift action_68
action_75 (37) = happyShift action_69
action_75 (38) = happyShift action_70
action_75 (39) = happyShift action_71
action_75 (44) = happyShift action_76
action_75 (47) = happyShift action_72
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (13) = happyShift action_4
action_76 (16) = happyShift action_5
action_76 (17) = happyShift action_23
action_76 (18) = happyShift action_24
action_76 (19) = happyShift action_25
action_76 (21) = happyShift action_26
action_76 (23) = happyShift action_27
action_76 (41) = happyShift action_103
action_76 (45) = happyShift action_29
action_76 (7) = happyGoto action_102
action_76 (9) = happyGoto action_21
action_76 (11) = happyGoto action_22
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (26) = happyShift action_101
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (28) = happyShift action_61
action_78 (30) = happyShift action_62
action_78 (31) = happyShift action_63
action_78 (32) = happyShift action_64
action_78 (33) = happyShift action_65
action_78 (34) = happyShift action_66
action_78 (35) = happyShift action_67
action_78 (36) = happyShift action_68
action_78 (37) = happyShift action_69
action_78 (38) = happyShift action_70
action_78 (39) = happyShift action_71
action_78 _ = happyReduce_48

action_79 (28) = happyShift action_61
action_79 (30) = happyShift action_62
action_79 (31) = happyShift action_63
action_79 (32) = happyShift action_64
action_79 (33) = happyShift action_65
action_79 _ = happyReduce_46

action_80 (28) = happyShift action_61
action_80 (30) = happyShift action_62
action_80 (31) = happyShift action_63
action_80 (32) = happyShift action_64
action_80 (33) = happyShift action_65
action_80 _ = happyReduce_45

action_81 (28) = happyShift action_61
action_81 (30) = happyShift action_62
action_81 (31) = happyShift action_63
action_81 (32) = happyShift action_64
action_81 (33) = happyShift action_65
action_81 _ = happyReduce_44

action_82 (28) = happyShift action_61
action_82 (30) = happyShift action_62
action_82 (31) = happyShift action_63
action_82 (32) = happyShift action_64
action_82 (33) = happyShift action_65
action_82 _ = happyReduce_43

action_83 (28) = happyShift action_61
action_83 (30) = happyShift action_62
action_83 (31) = happyShift action_63
action_83 (32) = happyShift action_64
action_83 (33) = happyShift action_65
action_83 (36) = happyShift action_68
action_83 (37) = happyShift action_69
action_83 (38) = happyShift action_70
action_83 (39) = happyShift action_71
action_83 _ = happyReduce_47

action_84 (28) = happyShift action_61
action_84 (30) = happyShift action_62
action_84 (31) = happyShift action_63
action_84 (32) = happyShift action_64
action_84 (33) = happyShift action_65
action_84 (36) = happyShift action_68
action_84 (37) = happyShift action_69
action_84 (38) = happyShift action_70
action_84 (39) = happyShift action_71
action_84 _ = happyReduce_42

action_85 _ = happyReduce_41

action_86 _ = happyReduce_39

action_87 _ = happyReduce_40

action_88 (31) = happyShift action_63
action_88 (32) = happyShift action_64
action_88 (33) = happyShift action_65
action_88 _ = happyReduce_38

action_89 (31) = happyShift action_63
action_89 (32) = happyShift action_64
action_89 (33) = happyShift action_65
action_89 _ = happyReduce_37

action_90 _ = happyReduce_51

action_91 (28) = happyShift action_61
action_91 (30) = happyShift action_62
action_91 (31) = happyShift action_63
action_91 (32) = happyShift action_64
action_91 (33) = happyShift action_65
action_91 (34) = happyShift action_66
action_91 (35) = happyShift action_67
action_91 (36) = happyShift action_68
action_91 (37) = happyShift action_69
action_91 (38) = happyShift action_70
action_91 (39) = happyShift action_71
action_91 (44) = happyShift action_100
action_91 (47) = happyShift action_72
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (14) = happyShift action_36
action_92 (15) = happyShift action_37
action_92 (22) = happyShift action_38
action_92 (23) = happyShift action_39
action_92 (24) = happyShift action_40
action_92 (46) = happyShift action_41
action_92 (12) = happyGoto action_99
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (13) = happyShift action_4
action_93 (16) = happyShift action_5
action_93 (17) = happyShift action_23
action_93 (18) = happyShift action_24
action_93 (19) = happyShift action_25
action_93 (21) = happyShift action_26
action_93 (23) = happyShift action_27
action_93 (41) = happyShift action_98
action_93 (45) = happyShift action_29
action_93 (7) = happyGoto action_97
action_93 (9) = happyGoto action_21
action_93 (11) = happyGoto action_22
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (25) = happyShift action_96
action_94 (28) = happyShift action_61
action_94 (30) = happyShift action_62
action_94 (31) = happyShift action_63
action_94 (32) = happyShift action_64
action_94 (33) = happyShift action_65
action_94 (34) = happyShift action_66
action_94 (35) = happyShift action_67
action_94 (36) = happyShift action_68
action_94 (37) = happyShift action_69
action_94 (38) = happyShift action_70
action_94 (39) = happyShift action_71
action_94 (47) = happyShift action_72
action_94 _ = happyReduce_30

action_95 _ = happyReduce_29

action_96 (23) = happyShift action_45
action_96 (10) = happyGoto action_108
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (20) = happyShift action_107
action_97 _ = happyReduce_14

action_98 (13) = happyShift action_4
action_98 (16) = happyShift action_5
action_98 (17) = happyShift action_23
action_98 (18) = happyShift action_24
action_98 (19) = happyShift action_25
action_98 (21) = happyShift action_26
action_98 (23) = happyShift action_27
action_98 (45) = happyShift action_29
action_98 (7) = happyGoto action_19
action_98 (8) = happyGoto action_106
action_98 (9) = happyGoto action_21
action_98 (11) = happyGoto action_22
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (26) = happyShift action_105
action_99 (28) = happyShift action_61
action_99 (30) = happyShift action_62
action_99 (31) = happyShift action_63
action_99 (32) = happyShift action_64
action_99 (33) = happyShift action_65
action_99 (34) = happyShift action_66
action_99 (35) = happyShift action_67
action_99 (36) = happyShift action_68
action_99 (37) = happyShift action_69
action_99 (38) = happyShift action_70
action_99 (39) = happyShift action_71
action_99 (47) = happyShift action_72
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_52

action_101 _ = happyReduce_21

action_102 _ = happyReduce_16

action_103 (13) = happyShift action_4
action_103 (16) = happyShift action_5
action_103 (17) = happyShift action_23
action_103 (18) = happyShift action_24
action_103 (19) = happyShift action_25
action_103 (21) = happyShift action_26
action_103 (23) = happyShift action_27
action_103 (45) = happyShift action_29
action_103 (7) = happyGoto action_19
action_103 (8) = happyGoto action_104
action_103 (9) = happyGoto action_21
action_103 (11) = happyGoto action_22
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (42) = happyShift action_113
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (13) = happyShift action_4
action_105 (16) = happyShift action_5
action_105 (23) = happyShift action_27
action_105 (9) = happyGoto action_112
action_105 (11) = happyGoto action_22
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (42) = happyShift action_111
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (13) = happyShift action_4
action_107 (16) = happyShift action_5
action_107 (17) = happyShift action_23
action_107 (18) = happyShift action_24
action_107 (19) = happyShift action_25
action_107 (21) = happyShift action_26
action_107 (23) = happyShift action_27
action_107 (41) = happyShift action_110
action_107 (45) = happyShift action_29
action_107 (7) = happyGoto action_109
action_107 (9) = happyGoto action_21
action_107 (11) = happyGoto action_22
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_31

action_109 _ = happyReduce_10

action_110 (13) = happyShift action_4
action_110 (16) = happyShift action_5
action_110 (17) = happyShift action_23
action_110 (18) = happyShift action_24
action_110 (19) = happyShift action_25
action_110 (21) = happyShift action_26
action_110 (23) = happyShift action_27
action_110 (45) = happyShift action_29
action_110 (7) = happyGoto action_19
action_110 (8) = happyGoto action_116
action_110 (9) = happyGoto action_21
action_110 (11) = happyGoto action_22
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (20) = happyShift action_115
action_111 _ = happyReduce_15

action_112 (44) = happyShift action_114
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_17

action_114 (13) = happyShift action_4
action_114 (16) = happyShift action_5
action_114 (17) = happyShift action_23
action_114 (18) = happyShift action_24
action_114 (19) = happyShift action_25
action_114 (21) = happyShift action_26
action_114 (23) = happyShift action_27
action_114 (41) = happyShift action_121
action_114 (45) = happyShift action_29
action_114 (7) = happyGoto action_120
action_114 (9) = happyGoto action_21
action_114 (11) = happyGoto action_22
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (13) = happyShift action_4
action_115 (16) = happyShift action_5
action_115 (17) = happyShift action_23
action_115 (18) = happyShift action_24
action_115 (19) = happyShift action_25
action_115 (21) = happyShift action_26
action_115 (23) = happyShift action_27
action_115 (41) = happyShift action_119
action_115 (45) = happyShift action_29
action_115 (7) = happyGoto action_118
action_115 (9) = happyGoto action_21
action_115 (11) = happyGoto action_22
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (42) = happyShift action_117
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_12

action_118 _ = happyReduce_11

action_119 (13) = happyShift action_4
action_119 (16) = happyShift action_5
action_119 (17) = happyShift action_23
action_119 (18) = happyShift action_24
action_119 (19) = happyShift action_25
action_119 (21) = happyShift action_26
action_119 (23) = happyShift action_27
action_119 (45) = happyShift action_29
action_119 (7) = happyGoto action_19
action_119 (8) = happyGoto action_123
action_119 (9) = happyGoto action_21
action_119 (11) = happyGoto action_22
action_119 _ = happyFail (happyExpListPerState 119)

action_120 _ = happyReduce_18

action_121 (13) = happyShift action_4
action_121 (16) = happyShift action_5
action_121 (17) = happyShift action_23
action_121 (18) = happyShift action_24
action_121 (19) = happyShift action_25
action_121 (21) = happyShift action_26
action_121 (23) = happyShift action_27
action_121 (45) = happyShift action_29
action_121 (7) = happyGoto action_19
action_121 (8) = happyGoto action_122
action_121 (9) = happyGoto action_21
action_121 (11) = happyGoto action_22
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (42) = happyShift action_125
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (42) = happyShift action_124
action_123 _ = happyFail (happyExpListPerState 123)

action_124 _ = happyReduce_13

action_125 _ = happyReduce_19

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (NewFunction_ happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (NewFunction happy_var_1 happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 6 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncNoArgsNoStmts happy_var_1 happy_var_2
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 7 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncNoArgsOnlyStmts happy_var_1 happy_var_2 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 7 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncOnlyArgsNoStmts happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 8 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncWithArgsAndStmts happy_var_1 happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_2  6 happyReduction_7
happyReduction_7 (HappyTerminal (ID happy_var_2))
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (Arg1 happy_var_1 happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 4 6 happyReduction_8
happyReduction_8 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Arg2 happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_2  7 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn7
		 (SimpleOp happy_var_1
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 7 7 happyReduction_10
happyReduction_10 ((HappyAbsSyn7  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 9 7 happyReduction_11
happyReduction_11 ((HappyAbsSyn7  happy_var_9) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (IfBElse happy_var_3 happy_var_6 happy_var_9
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 9 7 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (IfElseB happy_var_3 happy_var_5 happy_var_8
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 11 7 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (IfBElseB happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 5 7 happyReduction_14
happyReduction_14 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 7 7 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (IfB happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 5 7 happyReduction_16
happyReduction_16 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 7 7 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (WhileB happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 9 7 happyReduction_18
happyReduction_18 ((HappyAbsSyn7  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (For happy_var_3 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 11 7 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ForB happy_var_3 happy_var_5 happy_var_7 happy_var_10
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  7 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Return happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happyReduce 5 7 happyReduction_21
happyReduction_21 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (PrintInt happy_var_3
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  8 happyReduction_22
happyReduction_22 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (Statement_ happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  8 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (Statement happy_var_1 happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  9 happyReduction_24
happyReduction_24 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn9
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  9 happyReduction_25
happyReduction_25 _
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn9
		 (Increment happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  9 happyReduction_26
happyReduction_26 _
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn9
		 (Decrement happy_var_1
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  9 happyReduction_27
happyReduction_27 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 (DeclareVar happy_var_1 happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  10 happyReduction_28
happyReduction_28 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn10
		 (Id_ happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  10 happyReduction_29
happyReduction_29 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn10
		 (Id__ happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  10 happyReduction_30
happyReduction_30 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn10
		 (AssignValue happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 5 10 happyReduction_31
happyReduction_31 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AssignValue_ happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_1  11 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn11
		 (Int
	)

happyReduce_33 = happySpecReduce_1  11 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn11
		 (Bool
	)

happyReduce_34 = happySpecReduce_1  12 happyReduction_34
happyReduction_34 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn12
		 (Num happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  12 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn12
		 (True_
	)

happyReduce_36 = happySpecReduce_1  12 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn12
		 (False_
	)

happyReduce_37 = happySpecReduce_3  12 happyReduction_37
happyReduction_37 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Add happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  12 happyReduction_38
happyReduction_38 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Subtract happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  12 happyReduction_39
happyReduction_39 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Divide happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  12 happyReduction_40
happyReduction_40 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Multiply happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  12 happyReduction_41
happyReduction_41 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Module happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  12 happyReduction_42
happyReduction_42 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Equals happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  12 happyReduction_43
happyReduction_43 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  12 happyReduction_44
happyReduction_44 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Lesser happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  12 happyReduction_45
happyReduction_45 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Greateroreq happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  12 happyReduction_46
happyReduction_46 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Lesseroreq happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  12 happyReduction_47
happyReduction_47 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Different happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  12 happyReduction_48
happyReduction_48 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (FunctionAnd happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_2  12 happyReduction_49
happyReduction_49 (HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (Not happy_var_2
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  12 happyReduction_50
happyReduction_50 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn12
		 (Id happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  12 happyReduction_51
happyReduction_51 _
	_
	_
	 =  HappyAbsSyn12
		 (ScanInt
	)

happyReduce_52 = happyReduce 4 12 happyReduction_52
happyReduction_52 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (FunctionCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 48 48 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	BOOL -> cont 13;
	TRUE -> cont 14;
	FALSE -> cont 15;
	INT -> cont 16;
	IF -> cont 17;
	FOR -> cont 18;
	RETURN -> cont 19;
	ELSE -> cont 20;
	PRINTINT -> cont 21;
	SCANINT -> cont 22;
	ID happy_dollar_dollar -> cont 23;
	NUM happy_dollar_dollar -> cont 24;
	COMMA -> cont 25;
	SEMI -> cont 26;
	INCR -> cont 27;
	SUM -> cont 28;
	DECR -> cont 29;
	SUB -> cont 30;
	MULT -> cont 31;
	DIV -> cont 32;
	MOD -> cont 33;
	EQUAL -> cont 34;
	DIFF -> cont 35;
	BIGGER -> cont 36;
	LESS -> cont 37;
	BIGGEROREQ -> cont 38;
	LESSOREQ -> cont 39;
	ASSIGN -> cont 40;
	OPENBRACKETS -> cont 41;
	CLOSEBRACKETS -> cont 42;
	OPENPARENTHESIS -> cont 43;
	CLOSEPARENTHESIS -> cont 44;
	WHILE -> cont 45;
	NOT -> cont 46;
	AND -> cont 47;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 48 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


data Prog = NewFunction_ GDefn | NewFunction GDefn Prog deriving Show

data GDefn = FuncNoArgsNoStmts Type String | FuncNoArgsOnlyStmts Type String Stmts
           | FuncOnlyArgsNoStmts Type String GDefns | FuncWithArgsAndStmts Type String GDefns Stmts deriving Show

data GDefns = Arg1 Type String | Arg2 Type String GDefns deriving Show

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
         | Id String | FunctionCall String Exp | ScanInt | FunctionAnd Exp Exp deriving Show




parseError :: [Token] -> a
parseError toks = error ("parse error at " ++ show toks)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
