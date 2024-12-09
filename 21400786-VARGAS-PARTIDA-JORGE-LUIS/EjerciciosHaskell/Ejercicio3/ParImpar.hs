parImpar :: Int -> String
parImpar num = if mod 2 num == 0 then "Par"
else "Impar"

main :: IO()
main = do
    putStrLn("El numero 7 es: ")
    print(parImpar 5)