other
renderContentOn: html

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Create Item' translateIn: self session).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'item-name'; with: ('Item Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'item-name'; callback: [:value | self addValue: value named: 'name'].
			].
			html div class: 'top-search-filters-one'; with: [
				html submitButton 
					style: 'margin-top: 25px;';
					callback: [self createItem]; 
					with: ('Add Item' translateIn: self session)]
		]
	]