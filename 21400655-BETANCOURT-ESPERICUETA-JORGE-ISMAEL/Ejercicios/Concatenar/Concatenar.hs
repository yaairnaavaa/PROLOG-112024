concatenar :: String -> String -> String
concatenar str1 str2 = str1 ++ str2

-- Función principal

main :: IO ()
main = do

    -- Prueba de la función concatenar
    putStrLn "Concatenado 'Hola' y 'Mundo'"
    print(concatenar "Hola" " Mundo")