import System.IO (readFile)

main :: IO ()
main = do
    -- Lee el contenido del archivo
    contenido <- readFile "numeros.txt"
    
    -- Convierte el contenido en una lista de números y words se encarga de ponerle espacios para delemitarlo
    let numeros = map read (words contenido) :: [Int]
    
    let suma = sum numeros
    putStrLn $ "La suma de los números es: " ++ show suma
