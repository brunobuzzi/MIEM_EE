bpm interaction
asBpmUser
	"Answer <aBpmRole> corresponding to the receiver. If not found answer <anException>.
	It is mandatory to all rols of this system to have a match with <aBpmRole>"

	^(BpmFrontOfficeRole getRoleNamed: nombre in: bpmApplication applicationName)
		ifNil: [BpmRoleMatchFailedException signal: 'It is mandatory to have a BPM Frontoffice Role matching this <Rol>'] 
		ifNotNil: [:bpmRole | bpmRole]