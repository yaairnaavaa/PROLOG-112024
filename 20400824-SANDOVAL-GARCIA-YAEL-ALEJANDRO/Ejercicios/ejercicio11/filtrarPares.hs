import Data.List (intercalate)

filtrarPares :: [Int] -> [Int]
filtrarPares x1 = [x2 | x2 <- x1, even x2]

main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacios:"
    input <- getLine
    let numeros = map read (words input) :: [Int] 
    putStrLn $ "Los números introducidos son: " ++ intercalate ", " (map show numeros)
    let pares = filtrarPares numeros
    putStrLn $ "Los números pares son: " ++ intercalate ", " (map show pares)
