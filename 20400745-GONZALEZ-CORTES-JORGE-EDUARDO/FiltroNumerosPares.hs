main :: IO ()
main = do
    putStrLn "Introduce los números separados por espacio:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    let evenNumbers = filter even numbers
    putStrLn $ "Los números pares son: " ++ show evenNumbers
