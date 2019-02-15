other
initializeNavigation

	self session user esUsuarioInterno ifTrue: [^self initializeNavigationForUsuarioInterno].

	^self initializeNavigationForUsuarioExterno