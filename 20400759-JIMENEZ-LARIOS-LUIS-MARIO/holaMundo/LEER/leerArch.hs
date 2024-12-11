import System.IO (readFile)

main :: IO ()
main = do
    putStrLn "Introduce el nombre del archivo (ejemplo: numeros.txt):"
    nombreArchivo <- getLine
    contenido <- readFile nombreArchivo
    let numeros = map read (lines contenido) :: [Int]
    let suma = sum numeros
    putStrLn $ "La suma de los números del archivo es: " ++ show suma
