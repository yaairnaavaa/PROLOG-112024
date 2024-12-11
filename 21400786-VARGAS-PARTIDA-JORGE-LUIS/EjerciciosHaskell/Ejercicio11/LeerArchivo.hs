import Data.List

main :: IO ()
main = do
    contenido <- readFile "numeros.txt"
    let numeros = map read (lines contenido) :: [Int] 
    let suma = sum numeros 
    putStr ("Contenido del archivo:\n" ++ contenido)
    putStr ("La suma de los números es: " ++ show suma)
