factorial :: Int -> Int
factorial n = product [1..n]

main :: IO ()
main = do
 putStrLn "Calculando el factorial de 5"
 print (factorial 5)