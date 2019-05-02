default instances
casulloDeCebada

	^self getFuenteEnergiaNamed: 'Casullo de cebada' ifAbsent: [MiemObjectNotFoundException signal].