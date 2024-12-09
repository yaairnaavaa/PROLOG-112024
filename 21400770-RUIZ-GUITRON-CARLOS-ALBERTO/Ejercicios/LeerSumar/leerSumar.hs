import System.IO (readFile)
import Data.List (map)

leerSumar :: FilePath -> IO Int
leerSumar archivo = do
    contenido <- readFile archivo

    let numeros = map read (lines contenido) :: [Int]
    return (sum numeros)

main :: IO ()
main = do
    let archivo = "numeros.txt"
    resultado <- leerSumar archivo
    putStrLn ("La suma de los números es: " ++ show resultado)