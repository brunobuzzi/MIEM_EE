default instances
residuosForestales

	^self getFuenteEnergiaNamed: 'Residuos forestales' ifAbsent: [MiemObjectNotFoundException signal].