#!/usr/bin/env runhaskell
import System.Environment (getArgs)
d = 0.64 -- расстояние от глаз ло пальцев на вытянутой руке
dist :: Float -> Float -> Float
dist h_real h_visual = d * h_real/h_visual

main :: IO ()
main = do
    args <- getArgs
    case args of
        [h_real', h_visual'] -> do
            let hr = read h_real' :: Float
                hv = read h_visual' :: Float
            print $ dist hr hv
        _ -> putStrLn "Использование: func H_real h_visual
