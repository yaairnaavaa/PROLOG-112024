import System.IO 
import Data.List 
import Data.Char (isSpace)

main :: IO ()
main = do
    contenido <- readFile "numeros.txt"
    putStrLn "Lectura del arhcivo: "
    putStrLn contenido
    let numeros = map read (filter (not . all isSpace) (lines contenido)) :: [Int] 
    let suma = sum numeros 
    putStrLn $ "La suma de los números es: " ++ show suma