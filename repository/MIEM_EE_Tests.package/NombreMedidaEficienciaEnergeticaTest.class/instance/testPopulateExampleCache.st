other
testPopulateExampleCache

	NombreMedidaEficienciaEnergetica cache isEmpty ifTrue:[NombreMedidaEficienciaEnergetica populateExampleCache].

	self assert: NombreMedidaEficienciaEnergetica cache notEmpty.