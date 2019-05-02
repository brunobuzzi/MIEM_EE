default instances
glp

	^self getFuenteEnergiaNamed: 'GLP' ifAbsent: [MiemObjectNotFoundException signal].