import Text.Read (readMaybe)

clasificarNum :: Int -> String
clasificarNum number
    | number < 0 = "Negativo"
    | number == 0 = "Cero"
    | otherwise = "Positivo"

main :: IO ()
main = do
    putStrLn "Ingresa un número:"
    input <- getLine
    case readMaybe input :: Maybe Int of
        Just num -> putStrLn (clasificarNum num)
        Nothing -> putStrLn "Error, introduce un número válido"
