main :: IO ()
main = do
    putStrLn "Ingresa el primer número a sumar: "
    input1 <- getLine
    putStrLn "Ingresa el segundo número a sumar: "
    input2 <- getLine
    let num1 = read input1 :: Int
    let num2 = read input2 :: Int
    let suma = num1 + num2
    putStrLn $ "La suma de los dos números ingresados es: " ++ show suma
