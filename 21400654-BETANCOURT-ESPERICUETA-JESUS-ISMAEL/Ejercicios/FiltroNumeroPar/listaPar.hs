numerosPares :: [Int] -> [Int]
numerosPares [] = []
numerosPares (x:xs)
    | x `mod` 2 == 0 = x : numerosPares xs
    | otherwise      = numerosPares xs

main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacios: "
    input <- getLine
    let lista = map read (words input) :: [Int]
    putStrLn "Números pares en la lista:"
    print (numerosPares lista)

