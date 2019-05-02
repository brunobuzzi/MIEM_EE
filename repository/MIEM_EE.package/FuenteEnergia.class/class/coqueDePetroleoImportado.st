default instances
coqueDePetroleoImportado

	^self getFuenteEnergiaNamed: 'Coque de petróleo importado' ifAbsent: [MiemObjectNotFoundException signal].