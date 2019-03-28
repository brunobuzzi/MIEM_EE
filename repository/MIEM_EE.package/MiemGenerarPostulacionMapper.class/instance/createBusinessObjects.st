mapping
createBusinessObjects
	| postulacion form mappingMethod escenarioSinMedida escenarioConMedida resolverPostulacion |

	postulacion := (bpmProcessInstance getTaskNamed: 'seleccionar-postulacion' ifNone: []) externalObject.

	form := (bpmProcessInstance getTaskNamed: 'escenario-sin-medidas' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	escenarioSinMedida := form perform: mappingMethod.

	form := (bpmProcessInstance getTaskNamed: 'escenario-con-medidas' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	escenarioConMedida := form perform: mappingMethod.

	form := (bpmProcessInstance getTaskNamed: 'resolver-postulacion' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	resolverPostulacion := form perform: mappingMethod.

	^Array with: postulacion with: escenarioSinMedida with: escenarioConMedida with: resolverPostulacion