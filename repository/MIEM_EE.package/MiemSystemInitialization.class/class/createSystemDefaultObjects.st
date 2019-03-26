other
createSystemDefaultObjects
	| defaultEnvironment adminUser |

	(OrderedCollection new add: Autoconsumo; add: CIIU; add: FuenteEnergia; add:Moneda; add: Sector; add: TarifaReferencia; add: Rol; add: Usuario; add: Instrumento; add: UsoMedida; yourself) 
		do: [:eachClass | eachClass populateCache].

	defaultEnvironment := self defaultEnvironmentClass newNamed: 'MIEM'.

	adminUser := Usuario getUserNamed: 'admin'.
	defaultEnvironment registerUser: adminUser asBpmUser ifPresent: [].
	defaultEnvironment addToCache.

	defaultEnvironment registerApplication: self defaultBpmApplication.

	(Rol getExistingOrNewRolerNamed: 'Administrador' withType: 'Interno' in: self defaultBpmApplication) grantUsuario: adminUser.