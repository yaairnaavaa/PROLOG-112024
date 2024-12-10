sumaLista :: [Int] -> Int
sumaLista [] = 0
sumaLista (x:xs) = x + sumaLista xs

main :: IO()
main = do
    let lista1 = [1, 3, 5, 7, 9]
    let lista2 = [2, 4, 6, 8, 10]
    let res1 = sum lista1
    let res2 = sumaLista lista2
    putStrLn ("El resultado de la suma de la primera lista es: " ++ show res1)
    putStrLn ("El resultado de la suma de la segunda lista es: " ++ show res2)