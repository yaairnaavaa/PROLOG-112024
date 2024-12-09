parseInput :: String -> [Int]
parseInput input = map read (words input)

calculateLenght :: [a] -> Int
calculateLenght [] = 0
calculateLenght (_:xs) = 1 + calculateLenght xs

main :: IO ()
main = do
    putStrLn "Introduzca una lista de números separados por un espacio:"
    input <- getLine
    putStrLn $ "Longitud de la lista: " ++ show (calculateLenght (parseInput input))