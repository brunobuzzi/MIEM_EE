other
initializeCurrentSystem
	| defaultEnvironment |

	(OrderedCollection new add: Autoconsumo; add: CIIU; add: FuenteEnergia; add: Instrumento; add: Moneda; add: Rol; add: Sector; add: TarifaReferencia;
		add: Representacion; add:RepresentacionESCO; add: Empresa; add: Persona; add: ESCO; add: UsoMedida; yourself)
			do: [:eachClass | eachClass initializeCache].

	defaultEnvironment := self defaultEnvironmentClass getEnvironmentNamed: 'MIEM' ifNone: [BpmEnvironmentMatchFailedException signal: 'No [MIEM] Environment'].

	defaultEnvironment applications asArray do: [:each | defaultEnvironment unregisterApplication: each].
	defaultEnvironment users asArray do: [:each | defaultEnvironment unregisterUser: each].

	(self defaultProcessDefinitionClass getAllProcessDefinitionInBpmEnvironmentNamed: 'MIEM') do: [:procDefinition | procDefinition removeFromCache].

	defaultEnvironment removeFromCache.

	Usuario initializeCache.