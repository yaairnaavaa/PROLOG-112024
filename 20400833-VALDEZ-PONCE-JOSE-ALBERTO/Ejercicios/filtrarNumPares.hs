
filtraLista :: [Int] -> [Int]
filtraLista xs = filter even xs

main :: IO()
main = do
    putStrLn "Introduce una lista de números separados por espacios:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print (filtraLista numbers)