clasificarNumero :: Int -> String
clasificarNumero n
    | n<0 = "Negativo"
    | n>0 = "Positivo"
    | otherwise = "Positivo"

main :: IO ()
main = do 
    putStrLn "Ingresa un número: "
    input <- getLine
    let num = read input :: Int
    
    putStrLn (clasificarNumero num)