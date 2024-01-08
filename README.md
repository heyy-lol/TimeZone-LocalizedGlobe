# TimeZone+LocalizedGlobe.swift
Adds a localizedGlobe property to TimeZone that returns the corresponding Unicode globe emoji
## Usage
```
let currentGlobe = TimeZone.current.localizedGlobe
print(currentGlobe) // "🌎", "🌍", or "🌏"
```
