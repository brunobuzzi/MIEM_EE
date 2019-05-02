default instances
carbonVegetal

	^self getFuenteEnergiaNamed: 'Carbón vegetal' ifAbsent: [MiemObjectNotFoundException signal].