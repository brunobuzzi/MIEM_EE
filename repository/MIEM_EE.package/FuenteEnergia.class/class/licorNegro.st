default instances
licorNegro

	^self getFuenteEnergiaNamed: 'Licor negro' ifAbsent: [MiemObjectNotFoundException signal].