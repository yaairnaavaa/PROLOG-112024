-- Concatenar dos cadenas
concatenar :: String -> String -> String
concatenar str1 str2 = str1 ++ str2

-- Función principal
main :: IO ()
main = do
    -- Solicitar dos cadenas al usuario
    putStrLn "Introduce la primera cadena:"
    cadena1 <- getLine
    putStrLn "Introduce la segunda cadena:"
    cadena2 <- getLine

    -- Mostrar las cadenas separadas
    putStrLn $ "Primera cadena: " ++ cadena1
    putStrLn $ "Segunda cadena: " ++ cadena2

    -- Concatenar las cadenas y mostrar el resultado
    let resultado = concatenar cadena1 cadena2
    putStrLn $ "Cadenas concatenadas: " ++ resultado
