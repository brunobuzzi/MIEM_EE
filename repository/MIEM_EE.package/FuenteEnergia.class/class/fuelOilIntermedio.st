default instances
fuelOilIntermedio

	^self getFuenteEnergiaNamed: 'Fuel oil intermedio' ifAbsent: [MiemObjectNotFoundException signal].