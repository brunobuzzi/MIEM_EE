tables
removerHabilitacionButton

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
					jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeHabilitacion' actionMethod: #removeHabilitacion: arguments: (Array with: each).
					html div class: 'float-right margin-left-5px'; with: [
						html anchor 
									class: 'cursor-pointer';
									onClick: (html jQuery id: jQueryId) dialog open;
										with: [html image url: (SEWAFIconLibrary / #remove24Png); 
																title: ('Eliminar Habilitacion' translateIn: self session); 
																altText: ('Eliminar Habilitacion' translateIn: self session) ]
				]
			]
			title: 'X') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
				yourself