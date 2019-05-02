default instances
pelletsDeMadera

	^self getFuenteEnergiaNamed: 'Pellets de madera' ifAbsent: [MiemObjectNotFoundException signal].