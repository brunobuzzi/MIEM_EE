default instances
tonelada

	^self getUnidadNamed: 't' ifAbsent: [MiemObjectNotFoundException signal: '[Tonelada] does not exist']