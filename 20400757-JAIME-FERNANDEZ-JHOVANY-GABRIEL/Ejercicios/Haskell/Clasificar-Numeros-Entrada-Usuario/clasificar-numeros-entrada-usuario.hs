clasificarNumero :: Integer -> String
clasificarNumero n
    | n < 0     = "Negativo"
    | n == 0    = "Cero"
    | otherwise = "Positivo"

main :: IO ()
main = do   
    putStrLn "Introduce un número para clasificarlo:"
    input <- getLine
    let number = read input :: Integer
    putStrLn (clasificarNumero number)