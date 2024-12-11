concatena :: String -> String -> String
concatena a b = a ++ b

main :: IO ()
main = do
    print $ concatena "Hola" " Mundo"
