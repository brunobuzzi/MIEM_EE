*MIEM_EE
asNewEscenarioConMedidas
	| medidas |

	medidas := OrderedCollection new.
	self transverseFieldValues do: [:dictionary | | medida escenarioConMedidas |
		medida := MedidaEficienciaEnergetica new.
		escenarioConMedidas := EscenarioConMedidas newOn: medida.
		medida 
			moneda: (Moneda getMonedaNamed: (dictionary at: 'escConMedidaMoneda') value);
			esOperativa: (dictionary at: 'escConMedidaEsOperativa') value;
			vidaUtil: (dictionary at: 'escConMedidaVidaUtil') value;
			inversionTotal: (dictionary at: 'escConMedidaInversionTotal') value;		
			usoPrincipal: (UsoMedida getUsoWithCode: (dictionary at: 'escConMedidaUsoPrincipal') value);
			fechaInicioOperacion: (dictionary at: 'escConMedidaFechaInicioOperacion') value.
		escenarioConMedidas
			precioFuenteEnergia: (dictionary at: 'escConMedidaPrecioFuenteEnergia') value;
			consumoEnergia: (dictionary at: 'escConMedidaConsumoEnergia') value; 
			emisionCO2: (dictionary at: 'escConMedidaEmisionCO2') value; 
			fuenteEnergia: (dictionary at: 'escConMedidaFuenteEnergia') value.
		medidas add: medida.
	].
	^medidas