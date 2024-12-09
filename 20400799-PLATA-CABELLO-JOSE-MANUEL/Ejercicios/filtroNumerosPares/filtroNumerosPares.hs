
pares :: [Int] -> [Int]
pares a = filter even a

main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacios:"
    input <- getLine
    let numeros = map read (words input) :: [Int]
    let paresNumeros = pares numeros
    putStrLn $ "Los números pares son: " ++ show paresNumeros