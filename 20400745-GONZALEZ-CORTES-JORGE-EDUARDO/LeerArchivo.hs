main :: IO ()
main = do
    putStrLn "Introduce el nombre del archivo :"
    fileName <- getLine
    contents <- readFile fileName
    let numbers = map read (lines contents) :: [Int]
    putStrLn $ "La suma de los números es: " ++ show (sum numbers)
