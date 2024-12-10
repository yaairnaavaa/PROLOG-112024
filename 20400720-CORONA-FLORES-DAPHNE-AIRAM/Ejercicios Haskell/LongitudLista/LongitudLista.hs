longitudLista :: [a] -> Int
longitudLista [] = 0
longitudLista (_:xs) = 1 + longitudLista xs

main :: IO ()
main = do
    putStrLn "Longitud de la lista (1, 2, 3, 4, 5, 6):"
    print (longitudLista ([1, 2, 3, 4, 5, 6]))
