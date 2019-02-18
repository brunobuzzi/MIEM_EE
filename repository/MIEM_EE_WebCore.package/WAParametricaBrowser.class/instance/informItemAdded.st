other
informItemAdded

	self closeAllInformationComponents.
	(self getTableNamed: self tableName ifAbsent: [^self]) 
				information: ('Item Added' translateIn: self session)
				color: 'green'