other
removeItem: unItem

	(self componentValueAt: 'removeItem') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	unItem canDelete 
	ifFalse: [self closeAllInformationComponents.
				^(self getTableNamed: self tableName ifAbsent: [^self]) 
					information: ('Item Eliminado !!!' translateIn: self session)
					color: 'red'].

	batchList remove: unItem.
	
	unItem removeFromCache.

	self closeAllInformationComponents.
	(self getTableNamed: self tableName ifAbsent: [^self]) 
				information: ('Item Removed' translateIn: self session)
				color: 'green'