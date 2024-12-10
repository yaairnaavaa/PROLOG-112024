concCad :: String -> String -> String
concCad str1 str2 = str1 ++ str2

main :: IO()
main = do
    putStrLn "Concatenacion de 'Hola' y 'Mundo'"
    print(concCad "Hola " "Mundo")