tests
testPostulacionInstrumento
	| currentTask representacion postulacion |

	"to create necessary objects to run these tests"
	MiemRepresentacionExecutionTest run: #testAltaRepresentacionKaplan. 
	InstrumentoTest run: #testPopulateCache. 
	InstrumentoTest run: #testHabilitarInstrumentos. 
	UsoMedidaTest run: #testPopulateCache.

	representacion := Representacion cache asArray first.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'juan@MIEM').

	self assert: (procInstance startEvent getDefinitionName = 'inicio').

	"Step 1 - Seaside Form [seleccionar-postulacion]"
	currentTask := procInstance currentActivities last.
	postulacion := PostulacionInstrumento new.
	postulacion 
		representacion: representacion;
		instalacion: representacion instalaciones asArray first;
		habilitacionInstrumento: Instrumento getCurrentCEE. 
		
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan@MIEM' withForm: postulacion on: procInstance.
	self assert: (currentTask getDefinitionName = 'seleccionar-postulacion').

	"Step 2 - Orbeon Form [valores-escenarios]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan@MIEM' withForm: self form_valores_escenarios on: procInstance.
	self assert: (currentTask getDefinitionName = 'valores-escenarios').

	"Step 3 -  Seaside Form [analizar-postulacion]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'pedro@MIEM' withForm: PostulacionAnalisis new on: procInstance.
	self assert: (currentTask getDefinitionName = 'analizar-postulacion').

	"Step 4 - Orbeon Form [resolver-postulacion]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'pedro@MIEM' withForm: self formInstance_resolverPostulacion on: procInstance.
	self assert: (currentTask getDefinitionName = 'resolver-postulacion').