other
showRoles

	(arena isKindOf: WAMiemRoleManager)
	ifTrue: [^arena].

	^WAMiemRoleManager parent: self on: Rol new