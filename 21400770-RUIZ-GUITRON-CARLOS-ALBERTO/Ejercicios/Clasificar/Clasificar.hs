import Text.Read (readMaybe)
clasificarNumero :: Int -> String
clasificarNumero n
    | n < 0   = "Negativo"
    | n == 0  = "Cero"
    | n > 0   = "Positivo"

main :: IO ()
main = do

    putStrLn "Coloca el numero:"
    input <- getLine
    case readMaybe input :: Maybe Int of
        Just num -> putStrLn(clasificarNumero num)
        Nothing -> putStrLn "Invalid input. Please enter a valid integer."