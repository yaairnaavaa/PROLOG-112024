sumaLista = ::[int] -> [int]
sumaLista [] = 0
sumaLista (x:xs) = x + sumaLista xs

main :: IO ()
main = do
    putStrLn "Suma Lista [1,2,3,4,5]:"
    print (sumaLista [1,2,3,4,5])

