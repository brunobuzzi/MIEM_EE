default instances
litro

	^self getUnidadNamed: 'l' ifAbsent: [MiemObjectNotFoundException signal: '[Litro] does not exist']