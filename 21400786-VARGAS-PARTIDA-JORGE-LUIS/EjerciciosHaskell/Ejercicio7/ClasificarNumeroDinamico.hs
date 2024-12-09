import Text.Read(readMaybe)

clasificarNumero :: Int -> String
clasificarNumero n

    | n < 0     = "Negativo"
    | n == 0    = "Cero"
    | otherwise = "Positivo"

main :: IO ()
main = do

    putStrLn("Escribe un numero:")
    input <- getLine
    case readMaybe input :: Maybe Int of
        Just num -> putStrLn (clasificarNumero num)
        Nothing -> putStrLn("Valor no valido, porfavor escribe un numero")
    
    --putStrLn "Clasificacion de -5:"
    --putStrLn (clasificarNumero (-5))

    --putStrLn "Clasificacion de 0:"
    --putStrLn (clasificarNumero (0))

    --putStrLn "Clasificacion de 10:"
    --putStrLn (clasificarNumero (10))