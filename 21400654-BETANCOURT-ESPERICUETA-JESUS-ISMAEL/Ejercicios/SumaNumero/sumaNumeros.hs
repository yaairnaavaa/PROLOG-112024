suma :: Num a => (a, a) -> a
suma (x, y) = x + y 

main = do
  x <- readLn
  y <- readLn
  print $ suma (x, y)