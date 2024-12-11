-- Definimos una función que suma tres números enteros
sumarTresNumeros :: Int -> Int -> Int -> Int
sumarTresNumeros a b c = a + b + c

-- Programa principal
main :: IO ()
main = do
    -- Solicitamos al usuario tres números
    putStrLn "Introduce el primer número:"
    input1 <- getLine
    putStrLn "Introduce el segundo número:"
    input2 <- getLine
    putStrLn "Introduce el tercer número:"
    input3 <- getLine
    
    -- Convertimos las entradas a enteros
    let num1 = read input1 :: Int
    let num2 = read input2 :: Int
    let num3 = read input3 :: Int
    
    -- Calculamos la suma y la mostramos
    let resultado = sumarTresNumeros num1 num2 num3
    putStrLn $ "La suma de los tres números es: " ++ show resultado
