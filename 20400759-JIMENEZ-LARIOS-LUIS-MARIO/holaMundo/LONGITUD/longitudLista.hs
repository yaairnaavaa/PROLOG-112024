main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacios:"
    entrada <- getLine
    let numeros = map read (words entrada) :: [Int] 
    let longitud = calcularLongitud numeros
    putStrLn $ "La longitud de la lista es: " ++ show longitud

calcularLongitud :: [a] -> Int
calcularLongitud [] = 0 
calcularLongitud (_:xs) = 1 + calcularLongitud xs 
