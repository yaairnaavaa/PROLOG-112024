--concatenar dos cadenas
concatenar :: String -> String -> String
concatenar s1 s2 = s1 ++ s2

--Funcion principal
main :: IO ()
main = do
    
    putStrLn "Concatenando 'Hola' y 'Mundo' :"
    print(concatenar "Hola" "Mundo")