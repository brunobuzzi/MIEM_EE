other
renderCloseAndSendIconOn: html for: aBpmArtifactInstance
	| symbolIcon |

	symbolIcon := aBpmArtifactInstance isFinishedByPerformers ifFalse: [#tasksicon32Png] ifTrue: [#emailsendiconPng].

	html div class: 'float-right'; with: [
		self renderCloseAndSendAndTakeNextIconOn: html for: aBpmArtifactInstance.
	].