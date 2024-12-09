longitud :: [a] -> Int
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

main :: IO()
main = do
    let numeros = [1, 21, 32,4 , 4] :: [Int]
    let long = longitud numeros
    putStrLn $ "El arreglo " ++ show numeros ++ " contiene " ++ show long ++ " elementos."