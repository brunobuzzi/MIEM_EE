default instances
propano

	^self getFuenteEnergiaNamed: 'Propano' ifAbsent: [MiemObjectNotFoundException signal].