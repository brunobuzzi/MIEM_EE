other
modifyRole: rol value: aBoolean

	isAddingRol := false.

	aBoolean ifFalse: [^self].

	addRoleBatchedList add: selectedObject.

	rol grantUsuario: selectedObject.

	self closeAllInformationComponents.
	(self getTableNamed: 'RolsOfSelectedUser' ifAbsent: [^self]) 
				information: ('Usuario Agregado !!!' translateIn: self session)
				color: 'green'