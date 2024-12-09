import System.IO
import Data.List

main :: IO ()
main = do
    contenido <- readFile "numeros.txt"

    let numeros = map read (words contenido) :: [Int]
    let resultado = sum numeros
    
    putStrLn ("La suma es: " ++ show resultado)