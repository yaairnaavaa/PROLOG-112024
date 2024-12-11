tipo :: Int -> String
tipo n
    | n < 0 = "Negativo"
    | n == 0 = "Cero"
    | otherwise = "Positivo"

main :: IO ()
main = do
    putStrLn "Ingresa un número:"
    input <- getLine
    case readMaybe input :: Maybe Int of
        Just n -> putStrLn $ tipo n
        Nothing -> putStrLn "Entrada no válida"
