*miem_ee
asMiemUser
	"Answer <aUsuario> corresponding to the receiver in MIEM System. If not found answer <anException>.
	It is mandatory to all <Usuario> of MIEM System to have a match with <aBpmUser>"

	^Usuario getUserNamed: self username ifAbsent: [BpmUserMatchFailedException signal: 'It is mandatory to have a BPM User matching this <Usuario>']