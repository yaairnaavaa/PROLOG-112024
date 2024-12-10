factorial :: Int -> Int
factorial n = product [1..n]

main :: IO ()
main = do
 putStrLn "Introduce un número"
 input <- getLine
 let num = read input :: Int
 putStrLn $"El factorial de " ++ show num ++ " es: " ++ show (factorial num)