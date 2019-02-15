other
getRoleNamed: aString withType: roleType in: anApplication ifAbsent: aBlock
	"The receiver answer <aRol> named <aString> with role type <roleType> for bpm application <anApplication> if there is no role evaluate the niladic block <aBlock>"

	^self cache detect: [:each | (each nombre = aString) and: [(each tipo = roleType) and: [each bpmApplication == anApplication]]] ifNone: aBlock