clasificarNum :: Int -> String
clasificarNum n
    | n < 0 = "Negativo"
    | n == 0 = "Cero"
    | otherwise = "Positivo"

main :: IO ()
main = do
    putStrLn "El número 3 es:"
    print (clasificarNum 3)
