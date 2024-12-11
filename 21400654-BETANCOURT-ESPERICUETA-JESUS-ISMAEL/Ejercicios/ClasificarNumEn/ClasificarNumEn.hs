import Control.Exception

clasificarNumEn :: Int -> String
clasificarNumEn n
    | n < 0     = "Negativo"
    | n == 0    = "Cero"
    | otherwise = "Positivo"

main :: IO ()
main = do
    putStrLn "Ingresa un número:"
    input <- getLine
    let handler :: SomeException -> IO ()
        handler _ = putStrLn "Error de tipo de dato."
    catch (do
        let numero = read input :: Int
        putStrLn ("El número es: " ++ clasificarNumEn numero)
        ) handler
