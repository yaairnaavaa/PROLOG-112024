-- Función para calcular la longitud de una lista
longitud :: [x] -> Int
longitud [] = 0                    -- Caso base: una lista vacía tiene longitud 0
longitud (_:cola) = 1 + longitud cola  -- Caso recursivo: cuenta el primer elemento y continúa con el resto

-- Función principal
main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacio:"
    entrada <- getLine
    let lista = words entrada      -- Convierte la entrada en una lista de palabras
    putStrLn "La longitud de la lista es:"
    print (longitud lista)
