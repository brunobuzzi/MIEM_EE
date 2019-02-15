other
populateCache

	self getExistingOrNewRolerNamed: 'Administrador' withType: 'Interno' in: self defaultBpmApplication.

	self getExistingOrNewRolerNamed: 'Operador' withType: 'Interno' in: self defaultBpmApplication.

	self getExistingOrNewRolerNamed: 'Lector' withType: 'Interno' in: self defaultBpmApplication.

	self getExistingOrNewRolerNamed: 'Empresa' withType: 'Externo' in: self defaultBpmApplication.

	self getExistingOrNewRolerNamed: 'Persona Física' withType: 'Externo' in: self defaultBpmApplication.