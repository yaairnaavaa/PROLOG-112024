sumarLista :: [Int] -> Int
sumarLista [] = 0
sumarLista (x:xs) = x + sumarLista xs

main :: IO ()
main = print $ sumarLista [1, 2, 3, 4, 5]
