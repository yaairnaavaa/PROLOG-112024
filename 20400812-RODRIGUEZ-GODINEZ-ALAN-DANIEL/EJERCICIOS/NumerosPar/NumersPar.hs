-- Función que devuelve True si el número introducido es par y False si no lo es
par :: Int -> Bool
par x = if mod x 2 == 0 then True else False

main :: IO ()
main = do
    putStrLn "Introduce un número para ver si es par:"
    
    print (par 3)
   -- input <- getLine
    -- let number = read input :: Int  -- Convertimos el input a un número entero de tipo Int
    -- putStrLn (if par number then "Es par" else "No es par")

