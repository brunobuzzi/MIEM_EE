mapping methods
getMappingMethods

	^Dictionary new
		add: ('alta-representaction' -> #asNewRepresentacion);
		add: ('alta-empresa' -> #asNewEmpresa);
		add: ('alta-instalaciones' -> #asNewInstalaciones);
		add: ('documentos-representacion' -> #asNewDocumentosRepresentacion);
		yourself