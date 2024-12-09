import Text.Read (readMaybe)

-- Funcion para sumer entrada de dos numeros
sumaEntrada :: Int -> Int -> Int 
sumaEntrada a b = a + b

-- Funcion principal
main :: IO ()
main = do 
  -- Solicitar el primer dato 
  putStrLn "Ingresa el primer numero:"
  inputNumUno <- getLine
  let numUno = read inputNumUno :: Int 
  case readMaybe inputNumUno :: Maybe Int of
    Just numUno -> putStrLn "Ingresa el segundo numero"
    Nothing     -> putStrLn "No se pueden leer letras, solo numeros"

  -- Solicitar el segundo numero
  inputNumDos <- getLine 
  let numDos = read inputNumDos :: Int 
  case readMaybe inputNumDos :: Maybe Int of
    Just numDos -> print (sumaEntrada numUno numDos)
    Nothing     -> putStrLn "Solo numeros"
