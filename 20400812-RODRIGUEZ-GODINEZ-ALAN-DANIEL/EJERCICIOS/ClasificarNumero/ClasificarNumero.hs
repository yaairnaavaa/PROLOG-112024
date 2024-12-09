import Distribution.Compat.Prelude (readMaybe)
clasificarNumero :: Int -> String
clasificarNumero n
 | n < 0  = "Negativo"
 | n == 0 = "Cero"
 | otherwise = "positivo"
  

main :: IO ()
main = do

    putStrLn "Introduce un número:"
    input <- getLine

    case readMaybe input :: Maybe Int of
     Just numero -> putStrLn (clasificarNumero numero)
     Nothing -> putStrLn "Error: Por favor, introduce un numeri valido"

    -- let numero = read input :: Int
    --putStrLn "El numero dado es"
    --print (clasificarNumero numero)

   -- putStrLn "Clasificacion de -5:"
   -- putStrLn (clasificarNumero (-5))

   -- putStrLn "Clasificacion de 0:"
  --  putStrLn (clasificarNumero 0)