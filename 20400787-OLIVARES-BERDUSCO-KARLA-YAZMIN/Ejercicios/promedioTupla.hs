promedio :: ( Float, Float, Float ) ->  Float

promedio ( a, b, c ) = ( a + b + c ) /3

main :: IO ()
main = do
    putStrLn "El promedio de 4.0, 5.0 y 6.0 es: "
    print ( promedio( 4.0, 5.0, 6.0 ))