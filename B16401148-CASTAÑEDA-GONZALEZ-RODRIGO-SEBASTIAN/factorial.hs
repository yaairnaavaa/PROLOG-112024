 
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Función principal
main :: IO ()
main = do
    putStrLn "Ingrese un número para calcular su factorial:"
    input <- getLine  -- Leer entrada del usuario
    let number = read input :: Integer  -- Convertir la entrada a Integer
    if number < 0
        then putStrLn "El factorial no está definido para números negativos."
        else putStrLn $ "El factorial de " ++ show number ++ " es " ++ show (factorial number)
