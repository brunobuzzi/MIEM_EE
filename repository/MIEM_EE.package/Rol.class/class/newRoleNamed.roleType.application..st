other
newRoleNamed: aString roleType: roleType application: aBpmApplication
	"The receiver create a new role named <aString> of type <roleType> in application <aBpmApplication>"
	| newRol |

	newRol := self new initialize.
	newRol nombre: aString;
		tipo: roleType;
		bpmApplication: aBpmApplication;
		addToCache.

	^newRol