main :: IO ()
main = do
    putStrLn "ingresa el primer numero"
    input1 <- getLine
    putStrLn "ingresa el segundo numero"
    input2 <- getLine 
    let numero1 = read input1 :: Double
    let numero2 = read input2 :: Double
    let suma = numero1 + numero2
    putStrLn $ "la suma de los numeros es:" ++ show suma
