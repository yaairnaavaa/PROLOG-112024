import Text.Read

suma :: Int -> Int -> Int
suma x1 x2 = x1 + x2

main :: IO()
main = do
    y1 <- getLine
    case readMaybe y1 :: Maybe Int of
        Just x1 -> putStrLn $ "X1 = " ++ y1
        Nothing -> putStrLn "Entrada no valida"
    y2 <- getLine
    case readMaybe y2 :: Maybe Int of
        Just x2 -> putStrLn $ "X2 = " ++ y2
        Nothing -> putStrLn "Entrada no valida"
    let x1 = read y1 :: Int
    let x2 = read y2 :: Int
    putStrLn $ "La suma de " ++ y1 ++ " y " ++ y2 ++ " es:"
    print (suma x1 x2) 