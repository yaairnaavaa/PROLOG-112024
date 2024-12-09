main :: IO ()
main = do
    putStrLn "Introduce el primer número:"
    num1 <- readLn :: IO Int
    putStrLn "Introduce el segundo número:"
    num2 <- readLn :: IO Int
    let suma = num1 + num2
    putStrLn ("La suma de los números es: " ++ show suma)
