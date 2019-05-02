default instances
supergas

	^self getFuenteEnergiaNamed: 'Supergas' ifAbsent: [MiemObjectNotFoundException signal].