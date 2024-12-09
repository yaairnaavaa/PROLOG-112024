-- Función principal
main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacios:"
    input <- getLine
    let numeros = map read (words input) :: [Int] -- Convierte la entrada en una lista de enteros
    let longitud = calcularLongitud numeros       -- Calcula la longitud de la lista
    putStrLn $ "La longitud de la lista es: " ++ show longitud

-- Función para calcular la longitud de una lista
calcularLongitud :: [a] -> Int
calcularLongitud [] = 0           -- Caso base: una lista vacía tiene longitud 0
calcularLongitud (_:xs) = 1 + calcularLongitud xs -- Caso recursivo: cuenta 1 y llama a sí misma con el resto de la lista
