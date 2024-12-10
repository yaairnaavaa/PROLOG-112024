main :: IO ()
main = do
  putStrLn "Introduce el nombre del archivo (incluye la extensión):"
  archivo <- getLine
  contenido <- readFile archivo
  let numeros = map read (lines contenido) :: [Int]
  putStrLn $ "La suma de los números es: " ++ show (sum numeros)
                               

