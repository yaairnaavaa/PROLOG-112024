import System.IO()
import Control.Monad()

total :: String -> [Int]
total c = map sum (map (map readInt) (map words (lines c)))
    where
        readInt = read :: String -> Int

main :: IO ()
main = do
    contents <- readFile "numeros.txt"
    
    putStrLn "suma de todos los numeros en el archivo"
    putStrLn (show (sum (total contents)))
