other
setUpDefaultEnvironment
	| defaultEnvironment adminUser |

	defaultEnvironment := BpmEnvironment newNamed: 'MIEM'.

	adminUser := Usuario getUserNamed: 'admin'.
	defaultEnvironment registerUser: adminUser asBpmUser ifPresent: [].
	defaultEnvironment addToCache.

	defaultEnvironment registerApplication: self defaultBpmApplication.

	(Rol getExistingOrNewRolerNamed: 'Administrador' withType: 'Interno' in: self defaultBpmApplication) grantUsuario: adminUser.