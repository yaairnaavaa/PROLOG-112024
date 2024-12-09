-- Función para filtrar números pares
filtroPares :: [Int] -> [Int]
filtroPares numeros = filter even numeros

-- Función principal
main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacio:"
    entrada <- getLine
    let numeros = map read $ words entrada :: [Int]
    putStrLn "Números pares filtrados:"
    print (filtroPares numeros)
