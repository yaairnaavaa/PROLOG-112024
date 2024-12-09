import Text.Read (readMaybe)

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
        Just num -> putStrLn(clasificarNumero num)
        Nothing -> putStrLn "Error: Por favorm introduce un número valido."

    --let numero = read input :: Int
    --putStrLn "El numero es"
    --print (clasificarNumero numero)

   -- putStrLn "Clasificacion de -5:"
   -- putStrLn (clasificarNumero (-5))

   -- putStrLn "Clasificacion de 0:"
  --  putStrLn (clasificarNumero 0)