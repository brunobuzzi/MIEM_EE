other
renderContentOn: html

	html div with: [
		html form with: [
			html fieldSet with: [
				html div class: 'default-gray-table'; with: [html render: self sewafTableForHabilitaciones].
				html legend with: [html strong: ('Seleccionar Instrumento' translateIn: self session)].

				html submitButton class: 'display-block'; callback: [self answer]; with: ('Cerrar' translateIn: self session).
			]
		]
	].