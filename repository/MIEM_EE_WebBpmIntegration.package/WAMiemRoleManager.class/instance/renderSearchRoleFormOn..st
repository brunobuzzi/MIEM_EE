other
renderSearchRoleFormOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html div 
		with: [html form with: [
					html fieldSet with: [
						html legend class: 'top-search-legend'; 
							with: ('Search Roles' translateIn: self session).
						html div class: 'top-search-div'; with: [
							html label attributeAt: 'for' put: 'rolename'; with: ('Rol''s Name' translateIn: self session).
							html textInput attributeAt: 'id' put: 'rolename'; callback: [:value | model nombre: value].
						].
						html div class: 'top-search-div'; with: [
							html label attributeAt: 'for' put: 'application'; with: ('Application' translateIn: self session).
							self renderApplicationComboOn: html.
						].
						html div class: 'top-search-filters-one'; with: [
							html submitButton style: 'margin-top: 25px;';
								callback: [self searchRoles]; 
								with: ('Search' translateIn: self session).
						]
					]
				]
		].