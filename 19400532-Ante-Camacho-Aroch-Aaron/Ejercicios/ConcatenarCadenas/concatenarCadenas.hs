-- Concatenar dos cadenas
concatenar :: String -> String -> String 
concatenar str1 str2 = str1 ++ str2
-- Funcion Principal
main :: IO ()
main = do
-- Prueba de la funcion concatenar
  putStrLn "Concatenando 'Hola' y 'Mundo':"
  print (concatenar "Hola" "Mundo")

   
