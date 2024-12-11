-- Función que filtra los números pares
filtrarPares :: [Int] -> [Int]
filtrarPares = filter even

-- Función principal que recibe la entrada del usuario y muestra los pares
main :: IO ()
main = do
    -- Solicitar al usuario una lista de números
    putStrLn "Introduce una lista de números separados por espacios:"
    input <- getLine
    
    -- Convertir la entrada en una lista de enteros
    let numeros = map read (words input) :: [Int]
    
    -- Filtrar los números pares
    let pares = filtrarPares numeros
    
    -- Mostrar la lista de números pares
    putStrLn ("Lista de números pares: " ++ show pares)
