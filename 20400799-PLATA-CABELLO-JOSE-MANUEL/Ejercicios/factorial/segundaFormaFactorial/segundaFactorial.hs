-- Otra manera de obtener el factorial
factorial :: Int -> Int
-- Establecemos que en el factorial el 0 sea igual a 1
factorial 0 = 1

-- Obtenemos factorial
factorial n = n * factorial (n-1)

main :: IO ()
main = do
 putStrLn "El factorial de 4 es:"
 print (factorial 4)
