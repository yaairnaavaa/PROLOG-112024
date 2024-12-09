--Concatenar dos cadenas
concatenar :: String -> String -> String
concatenar str1 str2 = str1 ++ str2

--funcion principal
main :: IO ()
main = do
    --prueba de la funcion concatenar
    putStrLn "Concatenando 'Hola' y 'mundo':"
    print ((concatenar "hola" "mundo" ):: String) 