default instances
gasolinaPremium97_30SP

	^self getFuenteEnergiaNamed: 'Gasolina premium 97 30SP' ifAbsent: [MiemObjectNotFoundException signal].