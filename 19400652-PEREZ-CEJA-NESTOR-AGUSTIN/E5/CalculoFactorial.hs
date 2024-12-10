factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n - 1)

main :: IO()
main = do
    putStrLn "Factorial del numero 6"
    print(factorial 6)