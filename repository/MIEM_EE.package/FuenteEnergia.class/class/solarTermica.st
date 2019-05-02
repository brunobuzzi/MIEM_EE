default instances
solarTermica

	^self getFuenteEnergiaNamed: 'Solar térmica' ifAbsent: [MiemObjectNotFoundException signal].