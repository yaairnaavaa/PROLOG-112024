import Text.Read

clasificar :: Int -> String
clasificar n
    | n < 0     = "Negativo"
    | n == 0    = "Cero"
    | otherwise = "Positivo"

main :: IO()
main = do
    n <- getLine
    case readMaybe n :: Maybe Int of
        Just num -> putStrLn $ "El numero " ++ n ++ " es " ++ clasificar num
        Nothing -> putStrLn "Entrada no valida"