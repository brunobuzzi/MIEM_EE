default instances
electricidadDeLaRed

	^self getFuenteEnergiaNamed: 'Electricidad de la red' ifAbsent: [MiemObjectNotFoundException signal].