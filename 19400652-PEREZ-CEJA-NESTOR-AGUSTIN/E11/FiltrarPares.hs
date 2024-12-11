import Data.List (intercalate)

esPar :: Int -> Bool
esPar n = n `mod` 2 == 0

filtrarPares :: [Int] -> [Int]
filtrarPares = filter esPar

leerNumeros :: IO[Int]
leerNumeros = do
    putStrLn "Introduce una lista de numeros separados por espacio. Ejemplo. '1 2 3 4 5 6': "
    input <- getLine
    let numeros = map read (words input) :: [Int]
    return numeros

main :: IO()
main = do
    lista <- leerNumeros
    let numerosPares = filtrarPares lista
    putStrLn ("Los numeros pares encontrados son: " ++ intercalate ", " (map show numerosPares))