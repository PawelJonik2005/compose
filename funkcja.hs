compose :: Int -> (a -> a) -> a -> a
compose 0 _ x = x
compose n f x = f (compose (n - 1) f x)

double :: Int -> Int
double x = x * 2


main :: IO ()
main = do
  print $ compose 5 (+1) 0        
  print $ compose 3 double 1
