default instances
fuelOilPesado

	^self getFuenteEnergiaNamed: 'Fuel oil pesado' ifAbsent: [MiemObjectNotFoundException signal].