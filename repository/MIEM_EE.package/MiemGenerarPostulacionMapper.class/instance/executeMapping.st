mapping
executeMapping
	| businessObjects postulacion medidasSinMedida medidasConMedida formResolverPostulacion|

	businessObjects := self createBusinessObjects.
	postulacion := businessObjects at: 1.
	medidasSinMedida := businessObjects at: 2.
	medidasConMedida := businessObjects at: 3.
	formResolverPostulacion := businessObjects at: 4.

	medidasSinMedida keysAndValuesDo: [:index :medida |
		medida escenarioConMedidas: (medidasConMedida at: index) escenarioConMedidas.
		postulacion addMedida: medida.
		medida postulacionInstrumento: postulacion].

	formResolverPostulacion aprobada ifTrue: [postulacion postular].

	^postulacion