other
testPopulateCache

	Instrumento cache isEmpty ifTrue:[Instrumento populateCache].

	self assert: Instrumento cache notEmpty.