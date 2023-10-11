## Fix geo codes manually
## Input and output file should be nammed as DT

## Geo 2024 for Haram and Ålesund
DT[oldCode == 1534 & currentCode == 1507, currentCode := 1580] #Haram
DT[oldCode %in% c(1504, 1523, 1529, 1546) & currentCode == 1580, currentCode := 1508]
DT[oldCode == 1507, currentCode := 1599]
