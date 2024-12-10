main :: IO ()
main = do
    putStrLn "Introduce el nombre del archivo (ejemplo: numeros.txt):"
    archivo <- getLine
    contenido <- readFile archivo
    let numeros = map read (lines contenido) :: [Int]
    let resultado = sum numeros
    putStrLn $ "La suma de los números en el archivo es: " ++ show resultado