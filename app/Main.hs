module Main where

import Input


main :: IO ()
main = do
  name <- prompt "What is your name?"
  putStrLn $ "Hello, " ++ name ++ "!"
