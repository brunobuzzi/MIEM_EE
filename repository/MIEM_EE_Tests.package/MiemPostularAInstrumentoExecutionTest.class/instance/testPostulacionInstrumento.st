other
testPostulacionInstrumento
	| currentTask representacion |

	"to create necessary objects to run these tests"
	MiemRepresentacionExecutionTest run: #testAltaRepresentacionKaplan. 
	InstrumentoTest run: #testPopulateCache. 
	InstrumentoTest run: #testHabilitarInstrumentos. 
	UsoMedidaTest run: #testPopulateCache.
	NombreMedidaEficienciaEnergeticaTest run: #testPopulateExampleCache.

	representacion := Representacion cache asArray first.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'juan@MIEM').

	self assert: (procInstance startEvent getDefinitionName = 'inicio').

	"Step 1 - Seaside Form [seleccionar-postulacion]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan@MIEM' withForm: self formInstance_altaRepresentacion on: procInstance.
	self assert: (currentTask getDefinitionName = 'alta-representaction').