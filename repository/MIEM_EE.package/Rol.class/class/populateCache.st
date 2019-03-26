other
populateCache

	self newRoleNamed: 'Administrador' roleType: 'Interno' application: self defaultBpmApplication.
	self defaultFrontOfficeRoleClass createNewOrGetExisting: 'Administrador' in: self defaultBpmApplication applicationName.

	self newRoleNamed: 'Operador' roleType: 'Interno' application: self defaultBpmApplication.
	self defaultFrontOfficeRoleClass createNewOrGetExisting: 'Operador' in: self defaultBpmApplication applicationName.

	self newRoleNamed: 'Lector' roleType: 'Interno' application: self defaultBpmApplication.
	self defaultFrontOfficeRoleClass createNewOrGetExisting: 'Lector' in: self defaultBpmApplication applicationName.

	self newRoleNamed: 'Empresa' roleType: 'Externo' application: self defaultBpmApplication.
	self defaultFrontOfficeRoleClass createNewOrGetExisting: 'Empresa' in: self defaultBpmApplication applicationName.

	self newRoleNamed: 'Persona Física' roleType: 'Externo' application: self defaultBpmApplication.
	self defaultFrontOfficeRoleClass createNewOrGetExisting: 'Persona Física' in: self defaultBpmApplication applicationName.