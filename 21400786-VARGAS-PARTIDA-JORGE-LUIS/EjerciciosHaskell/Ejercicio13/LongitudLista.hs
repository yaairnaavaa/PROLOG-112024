-- Función para calcular la longitud de una lista
listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength xs

-- Función principal
main :: IO ()
main = do
    putStrLn "Introduce una lista de elementos separados por espacios:"
    input <- getLine
    let elements = words input
    let len = listLength elements
    putStrLn $ "La longitud de la lista es: " ++ show len