main :: IO ()
main = do
    putStrLn "Introduce el primer número:"
    num1 <- getLine
    putStrLn "Introduce el segundo número:"
    num2 <- getLine
    let suma = (read num1 :: Int) + (read num2 :: Int)
    putStrLn ("La suma de los dos números es: " ++ show suma)