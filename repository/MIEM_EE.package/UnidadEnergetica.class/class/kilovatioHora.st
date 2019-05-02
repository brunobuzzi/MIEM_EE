default instances
kilovatioHora

	^self getUnidadNamed: 'kWh' ifAbsent: [MiemObjectNotFoundException signal: '[Kilovatio Hora] does not exist']