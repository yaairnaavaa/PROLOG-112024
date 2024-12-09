import qualified Control.Exception as Exc
clasificarNumero :: Int -> String
clasificarNumero n
    | n < 0 = "Negativo"
    | n == 0 = "cero"
    | n > 0 = "Positivo"

main :: IO()
main = do
    putStrLn ("Clasificación de -5: " ++ clasificarNumero (-5))
    putStrLn ("Clasificación de  0: " ++ clasificarNumero 0)
    putStrLn ("Clasificación de  5: " ++ clasificarNumero 5)
    line <- getLine
    let num  = read line :: Int
    putStrLn ("Clasificación de  5: " ++ clasificarNumero num)
