clasificar :: Int -> String
clasificar n
    | n < 0     = "Negativo"
    | n == 0    = "Cero"
    | otherwise = "Positivo"

main :: IO()
main = do
    n <- getLine
    let num = read n :: Int 
    putStrLn $ "El numero " ++ show n ++ " es " ++ clasificar num