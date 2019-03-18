other
renderContentOn: html

	html div with: [
		html form with: [
			html fieldSet with: [
				html legend with: [html strong: ('Configurar Postulación' translateIn: self session)].
				self renderSelectInstrumentoOn: html.
				self renderSelectRepresentacionOn: html.
				html submitButton class: 'display-block'; callback: [self answer]; with: ('Cerrar' translateIn: self session).
			]
		]
	].