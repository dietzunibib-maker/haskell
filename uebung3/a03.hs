-- Aufgabe 3a)

-- Funktionsname: toFahrenheit
-- Umnrechnung von °Celsius nach °Fahrenheit
-- Die Funktion toFahrenheit nimmt eine Float-Zahl (Celsius) als Eingabe und gibt eine Float-Zahl (Fahrenheit) zurück.
-- Die Umrechnung von °C nach °F wird folgendermaßen berechnet: F = (9/5) * C + 32
-- Keine weiteren Zwischenberechnungen nötig


toFahrenheit :: Float -> Float 
toFahrenheit a = (9 / 5) * a + 32



-- Aufgabe 3b)

-- Funktionsname: toCelsius
-- Umrechnung von °Fahrenheit nach °Celsius
-- Input Float
-- Output Float

-- Funktionskopf: Die Funktion toCelsius nimmt eine Float-Zahl (Fahrenheit) als Eingabe und gibt eine Float-Zahl (Celsius) zurück.
-- Converting Fahrenheit to Celsius

toCelsius :: Float -> Float
-- Beispiele: 0, 42, 100
toCelsius b = (b - 32) * (5 / 9)

main :: IO ()
main = do 
    putStrLn "Celsius to Fahrenheit 0 -> 32.0"
    let temperatureFahrenheit = toFahrenheit 0 
    print temperatureFahrenheit

    putStrLn "Celsius to Fahrenheit 42 -> 107.6"
    let temperatureFahrenheit = toFahrenheit 42 
    print temperatureFahrenheit

    putStrLn "Celsius to Fahrenheit 100 -> 32.0 ?"
    let temperatureFahrenheit = toFahrenheit 0 
    print temperatureFahrenheit