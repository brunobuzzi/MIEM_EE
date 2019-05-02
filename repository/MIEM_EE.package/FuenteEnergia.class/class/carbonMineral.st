default instances
carbonMineral

	^self getFuenteEnergiaNamed: 'Carbón mineral' ifAbsent: [MiemObjectNotFoundException signal].