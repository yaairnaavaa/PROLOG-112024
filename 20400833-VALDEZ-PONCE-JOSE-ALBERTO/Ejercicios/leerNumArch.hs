main = do
  contenido <- readFile "numeros.txt"
  let numeros = map read (words contenido) :: [Int]
  print $ sum numeros