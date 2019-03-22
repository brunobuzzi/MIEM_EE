operations
newRemoveRolFromUserButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self removeRolFromUser: each]; 
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Eliminar Rol del Usuario' translateIn: self session); 
														altText: ('Eliminar Rol del Usuario' translateIn: self session).]] 
				title: 'DEL') sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself