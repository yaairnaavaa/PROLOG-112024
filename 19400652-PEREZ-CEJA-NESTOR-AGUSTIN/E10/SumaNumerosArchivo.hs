import System.IO
import Text.Read (readMaybe)

sumNumArchivo :: FilePath -> IO Int
sumNumArchivo archivo = do
    contenido <- readFile archivo
    let lineas = lines contenido
        numeros = map read lineas :: [Int]
    return (sum numeros)

main :: IO()
main = do
    let archivo = "numeros.txt"
    suma <- sumNumArchivo archivo
    putStrLn ("La suma de los numeros dentro del archivo es: " ++ show suma)