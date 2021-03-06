other
renderCloseAndSendFormOn: html for: aBpmArtifactInstance

	aBpmArtifactInstance isDone ifTrue: [^self].

	aBpmArtifactInstance isCreated ifFalse: [^self].
	(aBpmArtifactInstance isGrantedUser: self session user asBpmUser) ifFalse: [^self].

	"the task <aBpmArtifactInstance> is different from the current selected assignment"
	(aBpmArtifactInstance == model task) ifFalse: [^self].

	(aBpmArtifactInstance canCloseAndSend or: [(aBpmArtifactInstance hasPerformers and: [aBpmArtifactInstance canCloseAndSendPerformer: self session user asBpmUser])])
		ifTrue: [self renderCloseAndSendIconOn: html for: aBpmArtifactInstance
		]