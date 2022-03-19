print("Enter temperature in Fahrenheit: ")
local Fahrenheit = tonumber(io.read())

local Celsius = (Fahrenheit - 32) / 1.8

print("Entered temperature in Celsius: " .. Celsius)
