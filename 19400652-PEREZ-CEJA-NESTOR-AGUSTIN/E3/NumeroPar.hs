esPar :: Int -> Bool
esPar n = n `mod` 2 == 0

main :: IO()
main = do
    putStrLn "¿Es par el numero 2?"
    print(esPar 2)
    putStrLn "¿Es par el numero 5?"
    print(esPar 5)