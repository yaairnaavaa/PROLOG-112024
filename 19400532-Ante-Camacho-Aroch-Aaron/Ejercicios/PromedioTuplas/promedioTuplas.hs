promedio :: (Float, Float, Float) -> Float
promedio (a,b,c) = (a + b + c) /3

main :: IO ()
main = do
  putStrLn "promedio de los numeros (4.0, 5.0, 6.0):"
  print (promedio (4.0, 5.0, 6.0))
