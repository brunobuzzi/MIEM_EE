default instances
gasNatural

	^self getFuenteEnergiaNamed: 'Gas natural' ifAbsent: [MiemObjectNotFoundException signal].