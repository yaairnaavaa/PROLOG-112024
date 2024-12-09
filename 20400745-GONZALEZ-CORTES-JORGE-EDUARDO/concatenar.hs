-- CONCATENAR DOS CADENAS
concatenar :: String -> String -> String
concatenar str1 str2 = str1 ++ str2  -- Usamos '++' para concatenar cadenas en Haskell

-- FUNCION PRINCIPAL
main :: IO ()
main = do
  -- Prueba de la funcion concatenar
  let resultado = concatenar "hola" " mundo"
  putStrLn ("Concatenado: " ++ resultado)
