other
populateCache
	| administrador internoOperador internoLector externoEmpresa externoPersonaFisica |

	administrador := self new nombre: 'Administrador'; tipo: 'Interno'; yourself.
	administrador addToCache.

	internoOperador := self new nombre: 'Operador'; tipo: 'Interno'; yourself.
	internoOperador addToCache.

	internoLector := self new nombre: 'Lector'; tipo: 'Interno'; yourself.
	internoLector addToCache.

	externoEmpresa := self new nombre: 'Empresa'; tipo: 'Externo'; yourself.
	externoEmpresa addToCache.

	externoPersonaFisica := self new nombre: 'Persona Física'; tipo: 'Externo'; yourself.
	externoPersonaFisica addToCache.