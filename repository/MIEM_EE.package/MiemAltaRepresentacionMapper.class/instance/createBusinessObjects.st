other
createBusinessObjects
	| form mappingMethod representacion empresa instalaciones documentos |

	form := (bpmProcessInstance getTaskNamed: 'alta-representaction' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	representacion := form perform: mappingMethod.

	form := (bpmProcessInstance getTaskNamed: 'alta-empresa' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	empresa := form perform: mappingMethod.
 
	form := (bpmProcessInstance getTaskNamed: 'alta-instalaciones' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	instalaciones := form perform: mappingMethod.

	form := (bpmProcessInstance getTaskNamed: 'documentos-representacion' ifNone: []) externalObject.
	mappingMethod := self getMappingMethodFor: form.
	documentos := form perform: mappingMethod.

	^Array with: representacion with: empresa with: instalaciones with: documentos