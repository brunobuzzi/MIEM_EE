other
removeItemButton

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				each canDelete
				ifTrue: [
					jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeItem' actionMethod: #removeItem: arguments: (Array with: each).
					html anchor "callback: [self removeRol: each]; "
								class: 'cursor-pointer';
								onClick: (html jQuery id: jQueryId) dialog open;
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Eliminar Item' translateIn: self session); 
														altText: ('Eliminar Item' translateIn: self session).]
				]
				ifFalse: [html image url: (SEWAFIconLibrary / #stopred24Png); 
								title: ('El Item no se puede eliminar' translateIn: self session);  
								altText: ('El Item no se puede eliminar' translateIn: self session).
				]
			]
			title: 'X') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
				yourself