mapping
createBusinessObjects
	| postulacion form mappingMethod valoresEscenarios resolverPostulacion |

	postulacion := (bpmProcessInstance getTaskNamed: 'seleccionar-postulacion' ifNone: []) externalObject.

	form := (bpmProcessInstance getTaskNamed: 'valores-escenarios' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	valoresEscenarios := form perform: mappingMethod.

	form := (bpmProcessInstance getTaskNamed: 'resolver-postulacion' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	resolverPostulacion := form perform: mappingMethod.

	^Array with: postulacion with: valoresEscenarios with: resolverPostulacion