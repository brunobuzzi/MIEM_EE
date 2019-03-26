other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'postular-a-instrumento' withString: XPDLProcessDefinitionTemplate xpdl_alta_postulacion)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'postular-a-instrumento' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'postular-a-instrumento' ifNone: [self assert: false].