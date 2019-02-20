other
getMappingMethodFor: anOrbeonFormInstance

	^self getMappingMethodFor: anOrbeonFormInstance ifAbsent: [MiemMappingNotFoundException signal]