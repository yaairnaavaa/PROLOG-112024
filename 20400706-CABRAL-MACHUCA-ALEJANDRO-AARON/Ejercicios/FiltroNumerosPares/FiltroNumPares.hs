--Filtro de numeros pares: Devuelve una lista que contiene solo los números pares de la lista de 
--  elementos introducidos por el usuario separados por espacios.

filtraLista :: [Int] -> [Int]
filtraLista xs = filter even xs

main :: IO()
main = do
    putStrLn "Introduce una lista de números separados por espacios:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print (filtraLista numbers)
    