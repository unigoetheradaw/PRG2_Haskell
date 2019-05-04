-- ============================================================================
-- Grundlagen der Programmierung 2
-- Aufgabenblatt 2
-- ============================================================================
-- Aufgabe 2.3.d:

-- Main Func
main:: IO()
main = do
 -- Testcases
 print $ f 1 2 3
 print $ g 1 2 3
 print $ f 10 12 13
 print $ g 10 12 13
 print $ f 2 2 3
 print $ g 2 2 3
 
-- Ursprüngliche Version der Funktion
f :: Integer -> Integer -> Integer -> Integer
f x y z = if y >= 15
 then (if y < 23 then x*5 else f (x+4) (y+7) z)
 else f (x+4) (y+7) z

-- Umgewandelte Version der Funktion
g :: Integer -> Integer -> Integer -> Integer
g x y z = if y >= 15 && y < 23
 then x*5
 else f (x+4) (y+7) z
