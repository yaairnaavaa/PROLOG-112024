concatenar :: String -> String -> String
concatenar str1 str2 = str1 ++ str2

main :: IO()
main = do
    putStrLn "Concatenando 'Hola.' y ' Adios..."
    print (concatenar "Hola." " Adios...")