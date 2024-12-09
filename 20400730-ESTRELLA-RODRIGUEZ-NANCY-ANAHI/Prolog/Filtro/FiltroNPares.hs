import Data.List (intercalate)

filtrarPares :: [Int] -> [Int]
filtrarPares listainicial = [listafinal | listafinal <- listainicial, even listafinal]

main :: IO ()
main = do
    putStrLn "Introduce una lista de números:"
    input <- getLine
    let numeros = map read (words input) :: [Int] 
    let pares = filtrarPares numeros
    putStrLn $ "Los números pares son: " ++ intercalate ", " (map show pares)
