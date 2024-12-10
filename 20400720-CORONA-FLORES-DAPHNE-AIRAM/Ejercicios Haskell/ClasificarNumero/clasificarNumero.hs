import Text.Read (readMaybe)
clasificarNumero :: Int -> String
clasificarNumero n | n < 0 = "Negativo" | n == 0 = "Cero" | otherwise = "Positivo"

main :: IO ()
main = do
{-
    putStrLn "Clasificacion de -7:"
    putStrLn (clasificarNumero (-7))

    putStrLn "Clasificacion de 0:"
    putStrLn (clasificarNumero 0)

    putStrLn "Clasificacion de 27:"
    putStrLn (clasificarNumero 27)
-}
    putStrLn "Introduce un número"
    input <- getLine
    case readMaybe input :: Maybe Int of
        Just n -> putStrLn (clasificarNumero n)
        Nothing -> putStrLn "No se ha introducido un número válido"