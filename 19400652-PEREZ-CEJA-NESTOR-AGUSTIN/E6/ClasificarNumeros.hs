clasNums :: Int -> String
clasNums n | n > 0 = "Es Positivo" | n < 0 = "Es Negativo" | n == 0 = "Es Cero"

main :: IO()
main = do
    putStrLn "Introduce un Numero"
    num <- getLine
    let numero = read num :: Int
    putStrLn ("El numero introducido es: " ++ clasNums numero)