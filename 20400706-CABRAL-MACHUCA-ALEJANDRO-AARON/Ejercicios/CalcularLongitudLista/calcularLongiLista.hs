-- Calcular la longitud de una lista sin usar lenghth
calcularLongitud :: [Int] -> Int
calcularLongitud [] = 0
calcularLongitud (x:xs) = 1 + calcularLongitud xs 

main ::IO()
main = do
    putStr "La longitud de la lista es de: "
    print(calcularLongitud [1, 2, 3, 4, 5])
    