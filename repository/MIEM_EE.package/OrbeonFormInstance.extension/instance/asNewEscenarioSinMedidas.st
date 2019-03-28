*MIEM_EE
asNewEscenarioSinMedidas
	| medidas |

	medidas := OrderedCollection new.
	self transverseFieldValues do: [:dictionary | | medida escenarioSinMedidas nombreMedida |
		medida := MedidaEficienciaEnergetica new.
		escenarioSinMedidas := EscenarioSinMedidas newOn: medida.
		nombreMedida := NombreMedidaEficienciaEnergetica getMedidaWithCode: (dictionary at: 'escSinMedidaNombre') value.
		medida 
			nombreMedidaEficienciaEnergetica: nombreMedida;
			moneda: (Moneda getMonedaNamed: (dictionary at: 'escSinMedidaMoneda') value);
			esOperativa: (dictionary at: 'escSinMedidaEsOperativa') value;
			vidaUtil: (dictionary at: 'escSinMedidaVidaUtil') value;
			inversionTotal: (dictionary at: 'escSinMedidaInversionTotal') value;		
			usoPrincipal: (UsoMedida getUsoWithCode: (dictionary at: 'escSinMedidaUsoPrincipal') value);
			fechaInicioOperacion: (dictionary at: 'escSinMedidaFechaInicioOperacion') value.
		escenarioSinMedidas
			precioFuenteEnergia: (dictionary at: 'escSinMedidaPrecioFuenteEnergia') value;
			consumoEnergia: (dictionary at: 'escSinMedidaConsumoEnergia') value; 
			emisionCO2: (dictionary at: 'escSinMedidaEmisionCO2') value; 
			fuenteEnergia: (dictionary at: 'escSinMedidaFuenteEnergia') value.
		medidas add: medida.
	].
	^medidas