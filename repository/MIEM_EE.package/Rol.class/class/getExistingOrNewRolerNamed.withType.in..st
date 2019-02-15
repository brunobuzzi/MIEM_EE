other
getExistingOrNewRolerNamed: aString withType: roleType in: aBpmApplication
	"The receiver answer an existing or new <aRol> named <aString> with role type <roleType> for bpm application <anApplication>"

	^self getRoleNamed: aString withType: roleType in: aBpmApplication ifAbsent: [self newRoleNamed: aString roleType: roleType application: aBpmApplication]