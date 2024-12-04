import Control.Exception (try, evaluate, SomeException)

clasificarNumero :: Int -> String
clasificarNumero n
    | n < 0     = "Negativo"
    | n == 0    = "Cero"
    | otherwise = "Positivo"

main :: IO ()
main = do
    putStrLn "Introduce un número para clasificarlo:"
    input <- getLine
    result <- try (evaluate (read input :: Int)) :: IO (Either SomeException Int)
    case result of
        Left ex  -> putStrLn $ "Por favor ingrese un número"
        Right number -> print(clasificarNumero number)