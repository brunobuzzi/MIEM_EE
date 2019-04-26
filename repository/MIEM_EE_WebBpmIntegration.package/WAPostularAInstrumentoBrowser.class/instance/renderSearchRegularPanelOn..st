other
renderSearchRegularPanelOn: html

	super renderSearchRegularPanelOn: html.

	html div style: 'padding: 5px;'; with: [
		html anchor 
			callback: [self crearPostulacion];
			with: [
				html div with: [
					html image url: (SEWAFIconLibrary / #add24Png); 
						altText: ('Crear Postulación' translateIn: self session); 
						title: ('Crear Postulación' translateIn: self session).
				].
		].
	].