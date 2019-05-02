default instances
fuelOilCalefaccion

	^self getFuenteEnergiaNamed: 'Fuel oil calefacción' ifAbsent: [MiemObjectNotFoundException signal].