other
crearHabilitacionDesde: fechaInicio hasta: fechaFin vigente: estaVigente
	| habilitacion |

	habilitacion := HabilitacionInstrumento newOn: self.
	habilitacion inicioPlazo: fechaInicio;
		finPlazo: fechaFin;
		estaVigente: estaVigente.

	^habilitaciones add: habilitacion