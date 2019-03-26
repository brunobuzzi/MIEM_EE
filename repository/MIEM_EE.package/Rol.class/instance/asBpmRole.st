bpm interaction
asBpmRole
	"Answer <aBpmRole> corresponding to the receiver. If not found answer <anException>.
	It is mandatory to all rols of this system to have a match with <aBpmRole>"

	^(self defaultFrontOfficeRoleClass getRoleNamed: nombre in: self getApplicationName)
		ifNil: [BpmRoleMatchFailedException signal: 'It is mandatory to have a BPM Frontoffice Role matching this <Rol>'] 
		ifNotNil: [:bpmRole | bpmRole]