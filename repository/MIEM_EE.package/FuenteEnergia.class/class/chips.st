default instances
chips

	^self getFuenteEnergiaNamed: 'Chips' ifAbsent: [MiemObjectNotFoundException signal].