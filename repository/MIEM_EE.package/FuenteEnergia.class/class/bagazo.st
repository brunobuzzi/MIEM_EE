default instances
bagazo

	^self getFuenteEnergiaNamed: 'Bagazo' ifAbsent: [MiemObjectNotFoundException signal].