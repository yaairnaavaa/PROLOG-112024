main :: IO ()
main = do
    putStrLn "Introduce el primer número:"
    input1 <- getLine
    putStrLn "Introduce el segundo número:"
    input2 <- getLine
    let num1 = read input1 :: Int
    let num2 = read input2 :: Int
    putStrLn $ "La suma de los números es: " ++ show (num1 + num2)
