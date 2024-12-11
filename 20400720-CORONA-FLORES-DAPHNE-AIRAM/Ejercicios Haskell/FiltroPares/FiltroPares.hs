filtrarPares :: [Int] -> [Int]
filtrarPares xs = [x | x <- xs, even x]

main :: IO ()
main = do
    putStrLn "Filtro de los números (1, 2, 3, 4, 5, 6):"
    print (filtrarPares ([1, 2, 3, 4, 5, 6]))
