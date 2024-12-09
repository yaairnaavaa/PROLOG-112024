
main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacio:"
    input <- getLine
    let numeros = map read (words input) :: [Int]
    print (filtroPares numeros)

-- Función que filtra los números pares
filtroPares :: [Int] -> [Int]
filtroPares xs = [x | x <- xs, even x]
