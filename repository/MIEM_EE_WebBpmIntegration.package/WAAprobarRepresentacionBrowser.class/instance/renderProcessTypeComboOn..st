other
renderProcessTypeComboOn: html

	html label 
		attributeAt: 'for' put: 'processType';
		with: ('Process Type' translateIn: self session).

	html select "Process Definition List"
		attributeAt: 'id' put: 'processType';
		list: (self viewAllArray, (Array with: 'alta-representacion'))
"(lateralCollection collect: [:each | each formProcessDefinition name]) asSet asSortedCollection";
		onChange: 'submit()';
		callback: [:value | self registerProcessType: value];
		selected: (self searchValueAt: 'process-type' ifAbsent: ['']).