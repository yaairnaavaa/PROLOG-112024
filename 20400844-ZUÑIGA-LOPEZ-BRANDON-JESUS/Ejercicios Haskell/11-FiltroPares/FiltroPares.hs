main :: IO ()
main = do
    putStrLn "Introduce una lista de numeros:"
    input <- getLine
    
    let numbers = map read (words input) :: [Int]
    let evenNumbers = filter even numbers
    
    putStrLn $ "Números pares: " ++ show evenNumbers