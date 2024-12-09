import Text.Read (readMaybe)

clasificarNumero :: Integer -> String
clasificarNumero n
 | n < 0     = "El número es Negativo"
 | n == 0    = "El número es Cero"
 | otherwise = "El número es Positivo"

main :: IO ()
main = do
    putStrLn "Dame un número:"
    n <- getLine
    case readMaybe n :: Maybe Integer of
        Just num -> putStrLn (clasificarNumero num)
        Nothing -> putStrLn "Error: Introduce algo valido pa"