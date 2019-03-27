tests
testPostulacionInstrumento
	| currentTask representacion postulacion |

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
	postulacion := PostulacionInstrumento new.
	postulacion 
		representacion: representacion;
		instalacion: representacion instalaciones asArray first;
		habilitacionInstrumento: Instrumento getCurrentCEE. 
		
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan@MIEM' withForm: postulacion on: procInstance.
	self assert: (currentTask getDefinitionName = 'seleccionar-postulacion').

	"Step 2 - Orbeon Form [escenario-sin-medidas]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan@MIEM' withForm: self formInstance_escenarioSinMedidas on: procInstance.
	self assert: (currentTask getDefinitionName = 'escenario-sin-medidas').

	"Step 3 - Orbeon Form [aprobar-postulacion]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'pedro@MIEM' withForm: self formInstance_aprobarPostulacion on: procInstance.
	self assert: (currentTask getDefinitionName = 'aprobar-postulacion').

	"NOW the Process is waiting 'postulacion timer' event to be triggered (we trigger the event by hand)"
	(procInstance getLastEventNamed: 'postulacion timer' ifNone: [self assert: false]) generateNextRunningTransitions.

	"Step 4 - Orbeon Form [escenario-con-medidas]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan@MIEM' withForm: self formInstance_escenarioConMedidas on: procInstance.
	self assert: (currentTask getDefinitionName = 'escenario-con-medidas').

	"Step 5 - Orbeon Form [analizar-postulacion]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'pedro@MIEM' withForm: PostulacionAnalisis new on: procInstance.
	self assert: (currentTask getDefinitionName = 'analizar-postulacion').

	"Step 6 - Orbeon Form [resolver-postulacion]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'pedro@MIEM' withForm: self formInstance_resolverPostulacion new on: procInstance.
	self assert: (currentTask getDefinitionName = 'resolver-postulacion').