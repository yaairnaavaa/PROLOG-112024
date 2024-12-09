sumaEntrada :: [Int] -> Int 
sumaEntrada [] = 0
sumaEntrada (x:xs) = x + sumaEntrada xs

main :: IO ()
main = do
    -- Nombre del archivo que quieres leer
    let nombreArchivo = "numeros.txt"
    
    -- Leer el contenido del archivo
    contenido <- readFile nombreArchivo

    -- Mostrar los valores de entrada 
    let numeros = map read (words contenido) :: [Int]
    putStrLn $ "Numeros de arreglo " ++ show numeros

    -- Mostrar la suma de los valores
    putStrLn "La suma es:"
    print (sumaEntrada numeros)
