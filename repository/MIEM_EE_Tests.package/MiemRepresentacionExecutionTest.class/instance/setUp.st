other
setUp
	| environment application usuario1 usuario2 |

	processExecutionSimulator := PEFBpmProcessExecutor new.

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'MIEM'.

	application := self getOrbeonApplicationClass 
							getAnyApplicationNamed: 'dne' 
							ifNone: [(self getOrbeonApplicationClass newNamed: 'dne') addToCache].

	application hasBpmEnvironment ifFalse: [environment registerApplication: application].

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'alta-representacion' in: 'dne'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	usuario1 := Usuario getExistingOrNewUserNamed: 'juan@MIEM' password: ' ' forEnvironment: environment.
	usuario2 := Usuario getExistingOrNewUserNamed: 'pedro@MIEM' password: ' ' forEnvironment: environment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'juan@MIEM').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'pedro@MIEM').
	environment registerUser: (self getUserNamed: 'juan@MIEM').
	environment registerUser: (self getUserNamed: 'pedro@MIEM').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'Empresa' in: 'dne') grantUser: (self getUserNamed: 'juan@MIEM') ifPresent: [].
	(Rol getExistingOrNewRolerNamed: 'Empresa' withType: 'Externo' in: Rol defaultBpmApplication) grantUsuario: usuario1.
	(self defaultFrontOfficeRoleClass getRoleNamed: 'Operador' in: 'dne') grantUser: (self getUserNamed: 'pedro@MIEM') ifPresent: [].
	(Rol getExistingOrNewRolerNamed: 'Operador' withType: 'Interno' in: Rol defaultBpmApplication) grantUsuario: usuario2.