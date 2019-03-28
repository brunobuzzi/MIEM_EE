mapping
createBusinessObjects
	| postulacion form mappingMethod medidasSinMedida medidasConMedida resolverPostulacion |

	postulacion := (bpmProcessInstance getTaskNamed: 'seleccionar-postulacion' ifNone: []) externalObject.

	form := (bpmProcessInstance getTaskNamed: 'escenario-sin-medidas' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	medidasSinMedida := form perform: mappingMethod.

	form := (bpmProcessInstance getTaskNamed: 'escenario-con-medidas' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	medidasConMedida := form perform: mappingMethod.

	form := (bpmProcessInstance getTaskNamed: 'resolver-postulacion' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	resolverPostulacion := form perform: mappingMethod.

	^Array with: postulacion with: medidasSinMedida with: medidasConMedida with: resolverPostulacion