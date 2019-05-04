-- ============================================================================
-- Grundlagen der Programmierung 2
-- Aufgabenblatt 2
-- ============================================================================

import Data.List

-- Aufgabe 2 b)

-- Rekursive Hilfsfunktion!
h_endrekursiv zahl produkt =
    if produkt > 20
    then zahl + 50
        else h_endrekursiv (zahl + (produkt*produkt)) (produkt + 1)

-- Wird dadurch endrekuriv.
h x = h_endrekursiv 0 x

h_original x = if x > 20 then 50 else x*x + h_or (x+1)

-- Tests
{-
h_original 1 
--> 2920

h 1
--> 2920

h_original 15
--> 1905

h 15
--> 1905
-}
