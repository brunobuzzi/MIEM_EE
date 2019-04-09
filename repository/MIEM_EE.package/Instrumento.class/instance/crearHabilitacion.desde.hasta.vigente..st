other
crearHabilitacion: unUsuario desde: fechaInicio hasta: fechaFin vigente: estaVigente
	| habilitacion |

	habilitacion := HabilitacionInstrumento newOn: self.
	habilitacion usuario: unUsuario;
		inicioPlazo: fechaInicio;
		finPlazo: fechaFin;
		estaVigente: estaVigente.

	^habilitaciones add: habilitacion