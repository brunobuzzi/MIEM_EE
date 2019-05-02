default instances
gasoil50S

	^self getFuenteEnergiaNamed: 'Gasoil 50S' ifAbsent: [MiemObjectNotFoundException signal].