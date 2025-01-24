This improved version uses `either` to handle the potential `IOException` gracefully.
```haskell
import qualified Data.ByteString.Lazy as B
import System.IO

main :: IO ()
main = do
  result <- B.readFile "my_file.txt"
  case result of
    Left err -> putStrLn $ "Error reading file: " ++ show err
    Right contents -> putStrLn $ "File contents:" ++ show contents
```