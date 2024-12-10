import System.IO (readFile)
import Text.Read (readMaybe)
import Control.Exception (catch, IOException)

main :: IO ()
main = do
  contenido <- catch (readFile "ArchivoNum.txt") manejarArchivo
  let numeros = mapMaybe readMaybe (words contenido) :: [Int]
  if null numeros
    then putStrLn "El archivo no contiene números válidos."
    else print $ sum numeros

manejarArchivo :: IOException -> IO String
manejarArchivo _ = do
  putStrLn "Error: No se pudo leer el archivo. Verifica que exista y tenga permisos de lectura."
  return ""
