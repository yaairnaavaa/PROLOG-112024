suma :: Int -> Int -> Int -> Int
suma x y z = x + y + z

main :: IO()

main = do

    putStrLn "La suma de los 3 números es: "
    print(suma 3 5 2)