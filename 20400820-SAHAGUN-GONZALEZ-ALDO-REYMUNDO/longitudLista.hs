main :: IO ()
main = do
    putStrLn "Introduce una lista de elementos separados por espacio:"
    input <- getLine
    let lista = words input
    print (longitudLista lista)

-- Función que calcula la longitud de una lista recursivamente
longitudLista :: [a] -> Int
longitudLista [] = 0
longitudLista (_:xs) = 1 + longitudLista xs
