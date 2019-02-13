other
initialize

	super initialize.

	estaVigente :=  false.
	inicioPlazo :=  Date today.
	finPlazo :=  inicioPlazo addDays: 365.
	postulaciones := Set new.