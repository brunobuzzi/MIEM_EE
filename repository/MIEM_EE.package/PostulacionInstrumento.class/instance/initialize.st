other
initialize

	super initialize.

	fechaPostulacion := Date today.
	estado := #enProceso. "#enProceso #rechazada #aprobada"
	medidasEficienciaEnergetica := Set new.