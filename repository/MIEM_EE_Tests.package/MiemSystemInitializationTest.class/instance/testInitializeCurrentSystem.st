other
testInitializeCurrentSystem
	| defaultEnvironment |

	MiemSystemInitialization initializeCurrentSystem.

	(OrderedCollection new add: Autoconsumo; add: CIIU; add: FuenteEnergia; add: Instrumento; add: Moneda; add: Rol; add: Sector; add: TarifaReferencia;
		add: Representacion; add:RepresentacionESCO; add: Empresa; add: Persona; add: ESCO; add: UsoMedida; yourself)
			do: [:eachClass | self assert: eachClass cache isEmpty].

	defaultEnvironment := self defaultEnvironmentClass getEnvironmentNamed: 'MIEM' ifNone: [self assert: true].

	self assert: Usuario cache isEmpty