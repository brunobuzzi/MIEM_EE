tests
testAltaRepresentacionKaplan
	| currentTask |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'juan@MIEM').

	self assert: (procInstance startEvent getDefinitionName = 'inicio').

	"Step 1 - Form [alta-representaction]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan@MIEM' withForm: self formInstance_altaRepresentacion on: procInstance.
	self assert: (currentTask getDefinitionName = 'alta-representaction').

	"Step 2 - Form [alta-empresa]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan@MIEM' withForm: self formInstance_altaEmpresa on: procInstance.
	self assert: (currentTask getDefinitionName = 'alta-empresa').

	"Step 3 - Form [alta-instalaciones]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan@MIEM' withForm: self formInstance_altaInstalacion on: procInstance.
	self assert: (currentTask getDefinitionName = 'alta-instalaciones').

	"Step 4 - Form [documentos-representacion]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'juan@MIEM' withForm: self formInstance_documentosRepresentacion on: procInstance.
	self assert: (currentTask getDefinitionName = 'documentos-representacion').

	"Step 5 - Form [aprobar-representacion]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'pedro@MIEM' withForm: self formInstance_aprobarRepresentacion on: procInstance.
	self assert: (currentTask getDefinitionName = 'aprobar-representacion').