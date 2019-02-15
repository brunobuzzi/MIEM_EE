other
asBpmUser
	"Answer <aBpmUser> corresponding to the receiver. If not found answer <anException>.
	It is mandatory to all users of this system to have a match with <aBpmUser>"

	^self defaultBpmUserClass getUserNamed: nombre ifAbsent: [BpmUserMatchFailedException signal: 'It is mandatory to have a BPM User matching this <Usuario>']