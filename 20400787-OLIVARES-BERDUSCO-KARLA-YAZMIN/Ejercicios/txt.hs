import System.IO
import Control.Monad
sumaLista :: [Int] -> Int
sumaLista = sum

f :: [String] -> [Int]
f = map read

main :: IO ()

main = do
    let list = []
    handle <- openFile "numeros.txt" ReadMode
    contents <- hGetContents handle 
    let singlewords = words contents
        list = f singlewords
    print list
    print (sumaLista list)
    hClose handle