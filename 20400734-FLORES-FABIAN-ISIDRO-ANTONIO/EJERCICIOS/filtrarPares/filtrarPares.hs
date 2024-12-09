filtroPares :: [Int] -> [Int]
filtroPares xs = filter even xs

main :: IO ()
main = do
    putStrLn "Lista de numeros separado por espacios"
    entrada <- getLine
    let numeros = map read (words entrada) :: [Int]
    let pares = filtroPares numeros
    putStrLn $ "Los numeros pares son: " ++ show pares
