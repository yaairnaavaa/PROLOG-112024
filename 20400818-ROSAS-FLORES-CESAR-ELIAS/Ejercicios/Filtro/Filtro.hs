pares :: [Int] -> [Int]
pares xs = [x | x <- xs, even x]

main :: IO ()
main = do
    putStrLn "Escribe números separados por espacio:"
    input <- getLine
    let lista = map read (words input) :: [Int]
    print $ pares lista
