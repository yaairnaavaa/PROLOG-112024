import System.IO
sumarNumerosDeArchivo :: FilePath -> IO Int
sumarNumerosDeArchivo ruta = do
    contenido <- readFile ruta
    let numeros = map read (lines contenido) :: [Int]
    return (sum numeros)

main :: IO ()
main = do
    suma1 <- sumarNumerosDeArchivo "archivo1.txt"
    suma2 <- sumarNumerosDeArchivo "archivo2.txt"
    let sumaTotal = suma1 + suma2
    putStrLn ("La suma de los números de ambos archivos es: " ++ show sumaTotal)
