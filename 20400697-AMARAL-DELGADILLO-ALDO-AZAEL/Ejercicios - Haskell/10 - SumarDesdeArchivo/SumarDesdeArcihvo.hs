import System.IO
import Text.Read (readMaybe)

main :: IO ()
main = do
    putStrLn "Ingresa el nombre del archivo:"
    fileName <- getLine
    content <- readFile fileName
    let numbers = mapM readMaybe (lines content) :: Maybe [Double]
    case numbers of
        Nothing -> putStrLn "El archivo contiene líneas no válidas que no son números."
        Just nums -> putStrLn $ "La suma de los números es: " ++ show (sum nums)
