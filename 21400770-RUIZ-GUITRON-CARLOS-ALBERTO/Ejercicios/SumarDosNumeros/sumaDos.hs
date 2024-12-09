import Text.Read (readMaybe)

suma :: Int -> Int -> Int
suma x y = x + y

main :: IO ()
main = do
    putStrLn "Coloca el primer numero: "
    input1 <- getLine
    case readMaybe input1 :: Maybe Int of
        Just num1 -> do
            putStrLn "Coloca el segundo numero: "
            input2 <- getLine
            case readMaybe input2 :: Maybe Int of
                Just num2 -> do
                    print (suma num1 num2)
                Nothing -> putStrLn "No es un valor numerico"
        Nothing -> putStrLn "No es un valor numerico"