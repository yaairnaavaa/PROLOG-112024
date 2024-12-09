parseInput :: String -> [Int]
parseInput input = map read (words input)

filterEvenNumbers :: [Int] -> [Int]
filterEvenNumbers = filter even

main :: IO ()
main = do
    putStrLn "Introduzca una lista de números separados por un espacio:"
    input <- getLine
    putStrLn $ "Números pares: " ++ show (filterEvenNumbers (parseInput input))