other
habilitarInstrumentoButton

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				each hayHabilitacionActiva
				ifFalse: [
					jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 300 composite: WAHabilitarInstrumentoPopupComponent title: 'Habilitar Instrumento' domainObject: nil arguments: #().

					html div class: 'float-right margin-left-5px'; with: [
						html anchor 
									class: 'cursor-pointer';
									onClick: (html jQuery id: jQueryId) dialog open;
										with: [html image url: (MIEMIconLibrary / #document32Png); 
																title: ('Habilitar Instrumento' translateIn: self session); 
																altText: ('Habilitar Instrumento' translateIn: self session) ]
					]
				]
				ifTrue: [html image url: (MIEMIconLibrary / #stopred24Png); 
								title: ('Hay Instrumento Activo' translateIn: self session);  
								altText: ('Hay Instrumento Activo' translateIn: self session).
				]
			]
			title: 'X') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
				yourself