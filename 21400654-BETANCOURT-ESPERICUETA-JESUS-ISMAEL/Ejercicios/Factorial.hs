
factorial :: Int -> Int
factorial x = if x == 0 then 1 else x * factorial(x-1)


-- Función principal

main :: IO ()

main = do
    -- Prueba de la función
    let numero = 4
    putStrLn "El factorial de "
    print(numero)
    putStrLn "Es igual a"
    print(factorial numero)