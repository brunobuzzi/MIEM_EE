operations
removeUserButton

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				each canDelete 
				ifTrue: [
					jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeUser' actionMethod: #removeUser: arguments: (Array with: each).
					html anchor "callback: [self removeUser: each]; "
								class: 'cursor-pointer';
								onClick: (html jQuery id: jQueryId) dialog open;
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Eliminar Usuario' translateIn: self session); 
															altText: ('Eliminar Usuario' translateIn: self session).]
				]
				ifFalse: [html image url: (SEWAFIconLibrary / #stopred24Png); 
								title: ('Usuario no se puede eliminar' translateIn: self session);  
								altText: ('Usuario no se puede eliminar' translateIn: self session).
				]
			] 
			title: 'DEL') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself