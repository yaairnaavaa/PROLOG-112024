suma :: Int -> Int -> Int -> Int
suma x y z = x + y + z

main :: IO()

main = do
    putStrLn "La suma de 3, 5 y 2 es:"
    print(suma 3 5 2)