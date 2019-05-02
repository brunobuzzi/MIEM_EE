default instances
gasoil10S

	^self getFuenteEnergiaNamed: 'Gasoil 10S' ifAbsent: [MiemObjectNotFoundException signal].