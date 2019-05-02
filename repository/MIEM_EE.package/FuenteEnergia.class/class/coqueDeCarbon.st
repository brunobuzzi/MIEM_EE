default instances
coqueDeCarbon

	^self getFuenteEnergiaNamed: 'Coque de carbón' ifAbsent: [MiemObjectNotFoundException signal].