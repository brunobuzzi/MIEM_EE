searching
searchByApplication
	| roles |

	selectedApplication ifNil: [^self].

	roles := Rol getRolsIn: self session bpmEnvironment forApplication: selectedApplication.

	rolesBatchList items: roles.
	
	^roles