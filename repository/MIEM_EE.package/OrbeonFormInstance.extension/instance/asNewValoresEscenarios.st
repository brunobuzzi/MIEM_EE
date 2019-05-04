*MIEM_EE
asNewValoresEscenarios
	| medidas |

	medidas := OrderedCollection new.
	(self getSectionsNamed: 'section-1') do: [:section | | medida escenarioSinMedidas escenarioConMedidas |
		medida := MedidaEficienciaEnergetica new.
		medida 
			moneda: (Moneda getMonedaNamed: (section valueAt: 'medidaMoneda'));
			esOperativa: (section valueAt: 'medidaEsOperativa');
			vidaUtil: (section valueAt: 'medidaVidaUtil');
			inversionTotal: (section valueAt: 'medidaInversionTotal');
			usoPrincipal: (UsoMedida getUsoWithCode: (section valueAt: 'medidaUsoPrincipal'));
			gradoImplementacion: (section valueAt: 'medidaGradoImplementacion');
			fechaInicioOperacion: (section valueAt: 'medidaFechaInicioOperacion').
		section subSections do: [:subSection |
			escenarioSinMedidas := EscenarioSinMedidas newOn: medida.
			escenarioConMedidas := EscenarioConMedidas newOn: medida.
			escenarioSinMedidas
				fuenteEnergia: (FuenteEnergia getFuenteEnergiaWithCode: (subSection valueAt: 'escSinMedidaFuenteEnergia') ifAbsent: [nil]);
				precioFuenteEnergia: (subSection valueAt: 'escSinMedidaPrecioEnergetico'); 
				consumoEnergia: (subSection valueAt: 'escSinMedidaConsumoEnergia').
			escenarioConMedidas
				fuenteEnergia: (subSection valueAt: 'escConMedidaFuenteEnergia');
				precioFuenteEnergia: (subSection valueAt: 'escConMedidaPrecioEnergetico'); 
				consumoEnergia: (FuenteEnergia getFuenteEnergiaWithCode: (subSection valueAt: 'escConMedidaConsumoEnergia') ifAbsent: [nil]).
		].
		medidas add: medida.
	].
	^medidas