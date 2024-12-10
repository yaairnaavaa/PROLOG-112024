promedioTupla :: (Fractional a) => (a, a) -> a
promedioTupla (x, y) = (x + y)/2

main :: IO()
main = do
    let tupla = (235, 324)
    let res = promedioTupla tupla
    putStrLn ("El promedio de la tupla (235, 324) es: " ++ show res)