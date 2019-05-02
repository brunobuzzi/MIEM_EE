mapping
executeMapping
	| businessObjects postulacion medidas formResolverPostulacion |

	businessObjects := self createBusinessObjects.
	postulacion := businessObjects at: 1.
	medidas := businessObjects at: 2.
	formResolverPostulacion := businessObjects at: 3.

	medidas do: [:medida | 
		postulacion addMedida: medida.
		medida postulacionInstrumento: postulacion.
	].
	
	postulacion postular.

	^postulacion