mapping
executeMapping
	| businessObjects representacion empresa instalaciones documentos aprobarForm |

	businessObjects := self createBusinessObjects.
	representacion := businessObjects at: 1.
	empresa := businessObjects at: 2. "check if already exist update if not create a new one"
	instalaciones := businessObjects at: 3.
	documentos := businessObjects at: 4.
	aprobarForm := businessObjects at: 5.

	documentos do: [:each | representacion agregarCertificadoRepresentacion: each].
	instalaciones do: [:each | empresa registrarInstalacion: each.
										representacion representarInstalacion: each].

	empresa addToCache.
	representacion addToCache.

	representacion habilitada: true;
		aprobada: aprobarForm aprobada.

	^representacion