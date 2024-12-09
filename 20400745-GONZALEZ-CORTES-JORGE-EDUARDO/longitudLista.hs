listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength xs

main :: IO ()
main = do
    putStrLn "Introduce los números separados por espacio:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    putStrLn $ "La longitud de la lista es: " ++ show (listLength numbers)
