bpm interaction
getCreationProcessesIn: aBpmEnvironment
	"Answer a collection of latest process definitions <BpmTopProcessDefinition> where the receiver has creation permission"

	^self asBpmUser getCreationProcessesIn: aBpmEnvironment