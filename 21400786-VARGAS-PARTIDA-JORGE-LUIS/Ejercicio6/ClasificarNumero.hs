clasificarNumero :: Int -> String
clasificarNumero n

    | n < 0     = "Negativo"
    | n == 0    = "Cero"
    | otherwise = "Positivo"

main :: IO ()
main = do

    putStrLn "Clasificacion de -5:"
    putStrLn (clasificarNumero (-5))

    putStrLn "Clasificacion de 0:"
    putStrLn (clasificarNumero (0))

    putStrLn "Clasificacion de 10:"
    putStrLn (clasificarNumero (10))