-- Función para determinar si un número es par o impar
esParImpar :: Int -> String
esParImpar n 
    | even n    = "El número es par"
    | otherwise = "El número es impar"

-- Ejemplo de uso con un número fijo
main :: IO ()
main = do
    let numero = 54  -- Puedes cambiar este número por el que desees
    putStrLn (esParImpar numero)