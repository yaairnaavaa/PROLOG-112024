longLista :: [Int] -> Int 
longLista [] = 0 
longLista (_:xs) = 1 + longLista xs

main :: IO ()
main = do
     putStrLn "Longitud de la lista: " 
     print (longLista [1,2,3,4])