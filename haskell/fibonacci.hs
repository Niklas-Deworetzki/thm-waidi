import Criterion.Main

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main = defaultMain [bgroup "fib" [bench (show n) $ whnf fib n | n <- [10 .. 25]]]

