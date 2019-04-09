other
renderSearchRegularPanelOn: html

	super renderSearchRegularPanelOn: html.

	html div style: 'padding: 5px;'; with: [
		html anchor 
			callback: [self crearRepresentacion];
			with: [
				html div with: [
					html image url: (SEWAFIconLibrary / #add24Png); 
						altText: ('Crear Representación' translateIn: self session); 
						title: ('Crear Representación' translateIn: self session).
				].
		].
	].