module Main where

import System.Environment
import System.Exit


main = getArgs >>= parse >>= putStr . basic
basic = unlines . reverse . lines

parse["-v"] = usage  >> exit
parse[] = getContents

exit = exitWith ExitSuccess
usage = putStrLn "Usage: yiy [-file]"
