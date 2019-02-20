other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self getXpdlReaderClass forProcessNamed: 'alta-representacion' withString: XPDLProcessDefinitionTemplate xpdl_alta_representacion)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'alta-representacion' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'alta-representacion' ifNone: [self assert: false].