import System.IO

main :: IO ()
main = do
    contents <- readFile "numeros.txt"
    
    let numbers = map read (lines contents) :: [Int]
        total = sum numbers
    
    print total
