default instances
queroseno

	^self getFuenteEnergiaNamed: 'Queroseno' ifAbsent: [MiemObjectNotFoundException signal].