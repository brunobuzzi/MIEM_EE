*MIEM_EE
asNewValoresEscenarios
	| medidas |

	medidas := OrderedCollection new.
	self transverseFieldValues do: [:dictionary | | medida escenarioSinMedidas escenarioConMedidas |
		medida := MedidaEficienciaEnergetica new.
		escenarioSinMedidas := EscenarioSinMedidas newOn: medida.
		escenarioConMedidas := EscenarioConMedidas newOn: medida.
		medida 
			moneda: (Moneda getMonedaNamed: (dictionary at: 'escSinMedidaMoneda') value);
			esOperativa: (dictionary at: 'escSinMedidaEsOperativa') value;
			vidaUtil: (dictionary at: 'escSinMedidaVidaUtil') value;
			inversionTotal: (dictionary at: 'escSinMedidaInversionTotal') value;		
			usoPrincipal: (UsoMedida getUsoWithCode: (dictionary at: 'escSinMedidaUsoPrincipal') value);
			fechaInicioOperacion: (dictionary at: 'escSinMedidaFechaInicioOperacion') value.
		escenarioSinMedidas
			precioFuenteEnergia: (dictionary at: 'escSinMedidaFuenteEnergia') value;
			consumoEnergia: (dictionary at: 'escSinMedidaPrecioEnergetico') value; 
			consumoEnergia: (dictionary at: 'escSinMedidaConsumoEnergia') value.
		escenarioConMedidas
			precioFuenteEnergia: (dictionary at: 'escConMedidaFuenteEnergia') value;
			consumoEnergia: (dictionary at: 'escConMedidaPrecioEnergetico') value; 
			consumoEnergia: (dictionary at: 'escConMedidaConsumoEnergia') value.
		medidas add: medida.
	].
	^medidas