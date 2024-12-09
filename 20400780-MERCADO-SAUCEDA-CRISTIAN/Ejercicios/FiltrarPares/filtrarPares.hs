filtroPares :: [Int] -> [Int]
filtroPares [] = [] 
filtroPares (x:y) 
    | even x    = x : filtroPares y 
    | otherwise = filtroPares y

main :: IO ()
main = do
    putStrLn "Ingrese una lista de números separados por espacio:"
    input <- getLine 
    let numeros = map read (words input) :: [Int]
    let pares = filtroPares numeros
    putStrLn "Números pares en la lista:"
    print pares