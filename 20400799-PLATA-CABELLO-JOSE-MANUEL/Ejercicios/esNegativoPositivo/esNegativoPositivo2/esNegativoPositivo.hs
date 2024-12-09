import Text.Read
-- Clasificar numero si es positivo o negativo
-- Este programa recibe una entrada de un numero
-- que el usuario introduce
clasificarNumero :: Int -> String
clasificarNumero n
 | n < 0 = "Negativo"
 | n == 0 = "Cero"
 | otherwise = "Positivo"

main :: IO ()
main = do
    n <- getLine --Esta linea nos sirve para pedir que el usuario introdusca un numero
    case readMaybe n :: Maybe Int of
        Just num -> putStrLn $ "El numero " ++ n ++ " es " ++ clasificarNumero num
        Nothing -> putStrLn "Entrada no valida"
