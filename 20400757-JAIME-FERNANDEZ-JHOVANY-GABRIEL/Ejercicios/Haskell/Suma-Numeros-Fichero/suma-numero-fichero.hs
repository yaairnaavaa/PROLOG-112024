import System.IO

leerArchivo :: FilePath -> IO String
leerArchivo ruta = readFile ruta

convertirNumeros :: String -> [Int]
convertirNumeros contenido = map read (lines contenido)

sumarNumeros :: [Int] -> Int
sumarNumeros = sum

main :: IO ()
main = do
    contenido <- leerArchivo "numeros.txt"
    let numeros = convertirNumeros contenido
        suma = sumarNumeros numeros
    putStrLn $ "La suma de los número en el archivo es: " ++ show suma
