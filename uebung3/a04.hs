-- Aufgabe 4a)

-- Die Funktion zerfällt in drei Unterfunktionen:
-- Preis Kaffes
-- Preis Tees
-- Addiere Preis Kaffes und Preis Tees um Gesamtpreis zu erhalten

-- Funktionskopf priceCoffees
-- Funktionsname: priceCoffees
-- Die Funktion berechnet den Preis für die Gesamtanzahl aller gekauften Kaffees
-- Dazu wird der Preis für einen Kaffee mit der Anzahl der gekauften Kaffees multipliziert
-- Eingabe: Anzahl (Integer)
-- Ausgabe: Preis in Euro (Integer)
-- Signatur: priceCoffees :: Integer -> 
-- Beispiel
-- Anzahl Kaffees: 2, Preis pro Kaffee: 3€, 2*3 = 6, priceCoffee == 6

-- Funktionskopf priceTeas
-- Funktionsname priceTeas
-- Die Funktion berechnet den Preis für die Gesamtanzahl aller gekauften Tees
-- Dazu wird der Preis für einen Tee mit der Anzahl der gekauften Tees multipliziert
-- Eingabe: Anzahl (Integer)
-- Ausgabe: Preis in Euro (Integer)
-- Signatur: priceTea :: Integer -> Integer
-- Beispiel:
-- Anzahl Tees: 3, Preis pro Tee: 2€, 3*2 = 6, priceTea = 6

-- Funktionskopf totalPrice
-- Funktionsname: totalPrice
-- Eingabe: numberCoffees, numberTeas (Integer, Integer)
-- Ausgabe: Gesamtpreis in Euro (Integer)
-- totalPrice = priceCoffees + priceTeas
-- Signatur: totalPrice :: Integer -> Integer -> Integer


-- Aufgabe 4b

-- Funktionskopf totalPriceTip
-- Funktionsname: totalPriceTip
-- Eingabe: totalPrice x y (Integer, Integer)
-- Ausgabe: Preis inklusive 10% Trinkgeld (Double)
-- Signatur: totalPriceTip :: Integer -> Integer -> Double


priceCoffee :: Integer
priceCoffee = 3

priceTea :: Integer
priceTea = 2

priceCoffees :: Integer -> Integer
priceCoffees numberCoffees = priceCoffee * numberCoffees 

priceTeas :: Integer -> Integer
priceTeas numberTeas = priceTea * numberTeas

totalPrice :: Integer -> Integer -> Integer
totalPrice x y = priceCoffees x + priceTeas y

totalPriceTip :: Integer -> Integer -> Double
totalPriceTip x y = fromIntegral(totalPrice x y) * 1.1

main :: IO ()
main = do 
    putStrLn "Total price to pay: "
    let price_to_pay = totalPrice 2 3
    -- let price_to_pay == totalPrice 42 42
    -- let price to pay == totalPrice 0 10
    print price_to_pay

    putStrLn "Total price with tip: "
    let price_with_tip = totalPriceTip 2 3
    -- let price_with_tip = totalPriceTip 42 42
    -- let price_with_tip = totalPriceTip 0 10
    print price_with_tip
