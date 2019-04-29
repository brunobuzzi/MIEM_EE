other
testCreateSystemDefaultObjects
	| defaultEnvironment adminUser |

	MiemSystemInitialization createSystemDefaultObjects.

	(OrderedCollection new add: Autoconsumo; add: CIIU; add: FuenteEnergia; add:Moneda; add: Sector; add: TarifaReferencia; add: Rol; add: Usuario; add: Instrumento; add: UsoMedida; yourself) 
		do: [:eachClass | self assert: eachClass cache notEmpty].

	defaultEnvironment := self defaultEnvironmentClass getEnvironmentNamed: 'MIEM' ifNone: [self assert: false].

	adminUser := Usuario getUserNamed: 'admin'.

	self assert: (defaultEnvironment includesUserNamed: 'admin').
	self assert: (defaultEnvironment includesApplication: adminUser defaultBpmApplication).

	self assert: ((Rol getExistingOrNewRolerNamed: 'Administrador' withType: 'Interno' in: adminUser defaultBpmApplication) isGranted: adminUser).