import System.IO
leerdatos :: IO()
leerdatos = do contenedor  <-openFile "numeros.txt" ReadMode
               contenido <- hGetContents contenedor
               putStr contenido
               hClose contenedor
main :: IO()
main = leerdatos
