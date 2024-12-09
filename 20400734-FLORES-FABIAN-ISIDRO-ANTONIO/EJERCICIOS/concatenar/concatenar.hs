-- Concatenar dos cadenas
concatenar :: String -> String -> String
concatenar str1 str2 = str1 ++ str2

-- Funcion principal
main :: IO ()
main = do 
  putStrLn "Concatenar 'Hola' y 'Mundo':"
  print (concatenar "Hola" "Mundo")
