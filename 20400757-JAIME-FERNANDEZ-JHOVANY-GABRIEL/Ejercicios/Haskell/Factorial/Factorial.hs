factorial :: Integer -> Integer
factorial n = product [1..n]

main :: IO ()
main = do
    putStrLn "Introduce un número para calcular su factorial:"
    input <- getLine
    let number = read input :: Integer
    putStrLn $ "El factorial de " ++ show number ++ " es " ++ show (factorial number)
