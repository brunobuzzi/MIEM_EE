default instances
gasolinaAviacion100_130

	^self getFuenteEnergiaNamed: 'Gasolina aviación 100/130' ifAbsent: [MiemObjectNotFoundException signal].