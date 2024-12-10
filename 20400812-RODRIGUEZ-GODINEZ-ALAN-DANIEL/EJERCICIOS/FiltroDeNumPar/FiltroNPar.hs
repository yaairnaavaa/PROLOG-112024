parsearEntrada :: String -> [Int]
parsearEntrada entrada = map read (words entrada)

filtrarNumerosPares :: [Int] -> [Int]
filtrarNumerosPares = filter even

main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacio (ejemplo: 1 2 3 4 5 6):"
    entrada <- getLine
    let numeros = parsearEntrada entrada
    let numerosPares = filtrarNumerosPares numeros
    putStrLn $ "Los números pares son: " ++ show numerosPares