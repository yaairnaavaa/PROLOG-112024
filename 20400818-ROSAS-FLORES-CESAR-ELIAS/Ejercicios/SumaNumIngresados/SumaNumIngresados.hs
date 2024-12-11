sumaDos :: Int -> Int -> Int
sumaDos a b = a + b

main :: IO ()
main = do
    putStrLn "Escribe un número:"
    x <- readLn
    putStrLn "Escribe otro número:"
    y <- readLn
    print $ sumaDos x y
