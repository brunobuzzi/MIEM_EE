operations
modifyUser: user value: aBoolean

	isAddingUser := false.

	aBoolean ifFalse: [^self].

	usersWithSelectedRoleBatchList add: user.

	selectedObject grantUsuario: user.

	self closeAllInformationComponents.
	(self getTableNamed: 'UsersOfSelectedRole' ifAbsent: [^self]) 
			information: ('Usuario Asignado !!!' translateIn: self session)
			color: 'green'.