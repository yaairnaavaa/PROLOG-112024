-- Funcion para obtener un factorial de un numero
factorial :: Int -> Int
factorial n = product [1..n]

main :: IO ()
main = do
 putStrLn "El factorial de 4 es:"
 print (factorial 4)
