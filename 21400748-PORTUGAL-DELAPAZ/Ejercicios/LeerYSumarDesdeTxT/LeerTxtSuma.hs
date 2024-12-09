import System.IO

main :: IO ()
main = do
    -- Lee el contenido del archivo
    contenido <- readFile "numeros.txt"
    
    -- Convierte el contenido en una lista de números
    let lineas = lines contenido           -- Divide el contenido en líneas
        numeros = map read lineas :: [Int] -- Convierte cada línea a un número entero
    
    -- Imprime los números
    putStrLn "Los números son:"
    mapM_ print numeros

    -- Realiza alguna operación (ejemplo: suma)
    let suma = sum numeros
    putStrLn $ "La suma de los números es: " ++ show suma


	