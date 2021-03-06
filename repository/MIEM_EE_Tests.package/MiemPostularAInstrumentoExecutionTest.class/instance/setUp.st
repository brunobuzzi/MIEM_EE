other
setUp
	| environment application |

	processExecutionSimulator := PEFBpmProcessExecutor new.

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'MIEM'.

	application := self getOrbeonApplicationClass 
							getAnyApplicationNamed: 'dne' 
							ifNone: [(self getOrbeonApplicationClass newNamed: 'dne') addToCache].

	application hasBpmEnvironment ifFalse: [environment registerApplication: application].

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'postular-a-instrumento' in: 'dne'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	Usuario getExistingOrNewUserNamed: 'juan@MIEM' password: ' ' forEnvironment: environment.
	Usuario getExistingOrNewUserNamed: 'pedro@MIEM' password: ' ' forEnvironment: environment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'juan@MIEM').
	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'pedro@MIEM').
	environment registerUser: (self getUserNamed: 'juan@MIEM').
	environment registerUser: (self getUserNamed: 'pedro@MIEM').

	(self defaultFrontOfficeRoleClass getRoleNamed: 'Empresa' in: 'dne') grantUser: (self getUserNamed: 'juan@MIEM') ifPresent: [].
	(Rol getExistingOrNewRolerNamed: 'Empresa' withType: 'Externo' in: Rol defaultBpmApplication) grantUsuario: (Usuario getUserNamed: 'juan@MIEM').
	(self defaultFrontOfficeRoleClass getRoleNamed: 'Operador' in: 'dne') grantUser: (self getUserNamed: 'pedro@MIEM') ifPresent: [].
	(Rol getExistingOrNewRolerNamed: 'Operador' withType: 'Interno' in: Rol defaultBpmApplication) grantUsuario: (Usuario getUserNamed: 'pedro@MIEM').