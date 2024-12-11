calcularLongitud :: [a] -> Int
calcularLongitud [] = 0  -- Caso en que la longitud de la lista sea 0
calcularLongitud (_:xs) = 1 + calcularLongitud xs

main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacio (ejemplo: 1 2 3 4):"
    entrada <- getLine
    let numeros = map read (words entrada) :: [Int]
    let longitudDeLaLista = calcularLongitud numeros
    putStrLn $ "La longitud de la lista es: " ++ show longitudDeLaLista