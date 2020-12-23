module Main where
import Parser
import Lexer
import Interm

main :: IO()
main = do
  txt <- getContents
  let stm = (alexScanTokens txt)
  print stm
  let code = parser $ stm
  print code
  let interm = genProg $ code
  print interm
