main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacios:"
    entrada <- getLine
    let numeros = map read (words entrada) :: [Int] 
    let pares = filter even numeros 
    putStrLn $ "Números pares: " ++ show pares