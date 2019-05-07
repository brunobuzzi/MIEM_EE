mapping
executeMapping
	| businessObjects postulacion medidas formResolverPostulacion |

	businessObjects := self createBusinessObjects.
	postulacion := businessObjects at: 1.
	medidas := businessObjects at: 2.
	salvarPostulacion ifTrue: [formResolverPostulacion := businessObjects at: 3].

	postulacion medidasEficienciaEnergetica: Set new.

	medidas do: [:medida | 
		postulacion addMedida: medida.
		medida postulacionInstrumento: postulacion.
	].

	salvarPostulacion ifTrue: [postulacion postular].

	^postulacion