# Haskell ByteString readFile: Missing Exception Handling

This repository demonstrates a common error when using the `Data.ByteString.Lazy.readFile` function in Haskell: failure to handle potential exceptions, such as the file not being found.  The original code (`bug.hs`) lacks error handling, causing a runtime crash if "my_file.txt" is absent. The solution (`bugSolution.hs`) provides a robust approach using `either` to handle the `IOException`.

## How to Reproduce

1. Clone this repository.
2. Run the buggy code (`bug.hs`).  Note the runtime error if `my_file.txt` doesn't exist.
3. Run the fixed code (`bugSolution.hs`). Observe the graceful handling of the file not being found.