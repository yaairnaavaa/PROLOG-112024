-- Función para calcular la longitud de una lista sin usar length
listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength xs

-- Función principal
main :: IO ()
main = do
    putStrLn "Introduce una lista de elementos separados por espacio:"
    input <- getLine
    let elements = words input -- Dividir la entrada en una lista
        lengthOfList = listLength elements -- Calcular la longitud
    putStrLn $ "La longitud de la lista es: " ++ show lengthOfList