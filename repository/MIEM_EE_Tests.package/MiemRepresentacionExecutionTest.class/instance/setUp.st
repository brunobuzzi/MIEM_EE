other
setUp
	| environment application |

	processExecutionSimulator := PEFBpmProcessExecutor new.

	environment := BpmEnvironment getExistingEnvironmentOrCreateNewNamed: 'MIEM'.

	application := self getOrbeonApplicationClass 
							getAnyApplicationNamed: 'dne' 
							ifNone: [(self getOrbeonApplicationClass newNamed: 'dne') addToCache].

	application hasBpmEnvironment ifFalse: [environment registerApplication: application].

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'alta-representacion' in: 'dne'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: 'juan@MIEM').
	environment registerUser: (self getUserNamed: 'juan@MIEM').

	(BpmFrontOfficeRole getRoleNamed: 'Empresa' in: 'dne') grantUser: (self getUserNamed: 'juan@MIEM') ifPresent: [].