-- Función para calcular el factorial
factorial :: Integer -> Integer
factorial 0 = 1  -- Caso base: el factorial de 0 es 1
factorial n = n * factorial (n - 1)  -- Caso recursivo

-- Función principal
main :: IO ()
main = do
    -- Solicitar un número al usuario
    putStrLn "Introduce un número para calcular su factorial:"
    input <- getLine
    
    -- Convertir la entrada a un número entero
    let numero = read input :: Integer

    -- Verificar que el número sea no negativo
    if numero < 0
        then putStrLn "El factorial no está definido para números negativos."
        else do
            -- Calcular el factorial y mostrar el resultado
            let resultado = factorial numero
            putStrLn $ "El factorial de " ++ show numero ++ " es: " ++ show resultado
