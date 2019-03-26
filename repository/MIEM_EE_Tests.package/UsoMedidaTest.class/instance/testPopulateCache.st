other
testPopulateCache

	UsoMedida cache isEmpty ifTrue:[UsoMedida populateCache].

	self assert: UsoMedida cache notEmpty.