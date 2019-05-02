default instances
coqueDePetroleo

	^self getFuenteEnergiaNamed: 'Coque de petróleo' ifAbsent: [MiemObjectNotFoundException signal].