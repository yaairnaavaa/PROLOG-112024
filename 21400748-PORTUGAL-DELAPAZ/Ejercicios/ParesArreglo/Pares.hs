
main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacio:"
    input <- getLine
    let numbers = map read (words input) :: [Int] 
        evenNumbers = filter even numbers 
    putStrLn $ "Números pares: " ++ show evenNumbers
