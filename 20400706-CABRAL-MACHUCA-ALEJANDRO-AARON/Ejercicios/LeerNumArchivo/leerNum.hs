import System.IO

main :: IO ()
main = do
    handle <- openFile "numeros.txt" ReadMode
    contents <- hGetContents handle
    let numbers = map read (lines contents) :: [Int]
    print (sum numbers)