factorial :: Int -> Int

factorial n = product [1..n]

main :: IO ()

main = do
    putStrLn "El factorial de 5 es: "
    print (factorial 5)