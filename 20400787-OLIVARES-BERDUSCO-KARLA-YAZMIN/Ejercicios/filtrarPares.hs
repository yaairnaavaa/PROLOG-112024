parseInput :: String -> [Int]
parseInput input = map read (words input)

filtrarPares :: [Int] -> [Int]
filtrarPares = filter even

main :: IO ()
main = do
    putStrLn "Introduzca los números:"
    input <- getLine
    putStrLn $ "Números pares: " ++ show (filtrarPares (parseInput input))