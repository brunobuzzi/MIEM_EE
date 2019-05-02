default instances
biodiesel

	^self getFuenteEnergiaNamed: 'Biodiesel' ifAbsent: [MiemObjectNotFoundException signal].