longitud :: [Int] -> Int
longitud [] = 0
longitud (_:xs) = 1 + longitud xs

main :: IO ()
main = do
    putStrLn "Introduce números separados por espacios:"
    input <- getLine
    let lista = map read (words input) :: [Int]
    print $ "Tamaño: " ++ show (longitud lista)
