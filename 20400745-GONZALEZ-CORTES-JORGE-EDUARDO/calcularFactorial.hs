-- Función para calcular el factorial de un número
factorial :: Integer -> Integer
factorial 0 = 1  
factorial n = n * factorial (n - 1)  

-- Función principal
main :: IO ()
main = do
    putStrLn "Introduce un número para calcular su factorial:"
    num <- getLine  -- Lee una línea de entrada
    let numero = read num :: Integer 
    let resultado = factorial numero 
    putStrLn ("El factorial de " ++ show numero ++ " es " ++ show resultado)
