default instances
gasolinaSuper95_30SP

	^self getFuenteEnergiaNamed: 'Gasolina super 95 30SP' ifAbsent: [MiemObjectNotFoundException signal].