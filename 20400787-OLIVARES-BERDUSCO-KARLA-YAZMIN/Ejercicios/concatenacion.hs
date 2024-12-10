concatenar :: String -> String -> String

concatenar cadena cadena2 = cadena ++ cadena2

main :: IO ()

main = do
    putStrLn "Concatenando 'Hola' y 'Mundo': "
    print (concatenar "Hola" " Mundo")