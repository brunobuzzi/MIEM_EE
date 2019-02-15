other
setUpDefaultEnvironment
	| defaultEnvironment application adminUser |

	defaultEnvironment := BpmEnvironment newNamed: 'MIEM'.
	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'dne'.

	adminUser := Usuario getUserNamed: 'admin'.
	defaultEnvironment registerUser: adminUser asBpmUser ifPresent: [].
	defaultEnvironment addToCache.

	defaultEnvironment registerApplication: application.