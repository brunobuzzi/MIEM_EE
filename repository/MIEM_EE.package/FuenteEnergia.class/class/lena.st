default instances
lena

	^self getFuenteEnergiaNamed: 'Leña' ifAbsent: [MiemObjectNotFoundException signal].