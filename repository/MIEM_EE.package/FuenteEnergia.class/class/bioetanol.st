default instances
bioetanol

	^self getFuenteEnergiaNamed: 'Bioetanol' ifAbsent: [MiemObjectNotFoundException signal].