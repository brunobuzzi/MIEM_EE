other
renderAddButtonOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 300 composite: self defaultParametricComponent title: 'Create Item' domainObject: nil arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #add24Png); 
												title: ('Add Item' translateIn: self session); 
												altText: ('Add Item' translateIn: self session) ]
	]