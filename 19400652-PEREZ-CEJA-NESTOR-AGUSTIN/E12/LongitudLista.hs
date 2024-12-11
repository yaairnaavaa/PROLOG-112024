longitud :: [a] -> Int
longitud [] = 0
longitud (_:xs) = 1 + longitud xs

main :: IO()
main = do
    let lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let longitudLista = longitud lista
    putStrLn("La longitud de la lista es: " ++ show longitudLista)