module Input where

prompt :: String -> IO String
prompt msg = do
  putStrLn msg
  getLine
