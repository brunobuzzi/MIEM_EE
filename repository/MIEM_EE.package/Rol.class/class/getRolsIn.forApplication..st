bpm interaction
getRolsIn: aBpmEnvironment forApplication: anApplication

	^self cache select: [:each | each bpmApplication == anApplication]