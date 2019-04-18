import System.Environment(getArgs)

main = print . fib . read . head =<< getArgs

