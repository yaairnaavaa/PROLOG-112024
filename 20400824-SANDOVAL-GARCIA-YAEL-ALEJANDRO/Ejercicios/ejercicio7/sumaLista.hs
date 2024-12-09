sumaLista:: [Int] -> Int
sumaLista [] = 0
sumaLista (x: xs) = x + sumaLista xs

main :: IO()
main = do
    putStrLn "Sumatoria de 1, 2, 3, 4, 5 es:"
    print (sumaLista [1, 2, 3, 4, 5])