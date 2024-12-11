-- Función principal
main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacios:"
    input <- getLine
    let numeros = map read (words input) :: [Int] -- Convierte la entrada en una lista de enteros
    let pares = filtrarPares numeros              -- Filtra los números pares
    putStrLn "Números pares:"
    print pares                                   -- Imprime la lista de números pares

-- Función para filtrar números pares
filtrarPares :: [Int] -> [Int]
filtrarPares = filter even
