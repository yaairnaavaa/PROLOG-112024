parseInput :: String -> [Int]
parseInput input = map read (words input)

calcular :: [a] -> Int
calcular [] = 0
calcular (_:xs) = 1 + calcular xs

main :: IO ()
main = do
    putStrLn "Introduzca los datos de entrada:"
    input <- getLine
    putStrLn $ "Longitud de la lista: " ++ show (calcular (parseInput input))