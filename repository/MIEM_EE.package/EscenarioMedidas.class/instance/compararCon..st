other
compararCon: unEscenarioMedidas

	^Dictionary new
		at: 'fuente energia' put: fuenteEnergia nombre;
		at: 'ahorro tep' put: (self valorTEP - unEscenarioMedidas valorTEP);
		at: 'mejora emision CO2' put: (self emisionCO2TEP - unEscenarioMedidas emisionCO2TEP);
		yourself