longitudLista :: [Int] -> Int
longitudLista [] = 0
longitudLista (_:xs) = 1 + longitudLista xs

main :: IO ()
main = do
    putStrLn "La lista [1,2,3,4,5,6,7,8,9,10] tiene la siguiente longitud"
    print(longitudLista [1,2,3,4,5,6,7,8,9,10])