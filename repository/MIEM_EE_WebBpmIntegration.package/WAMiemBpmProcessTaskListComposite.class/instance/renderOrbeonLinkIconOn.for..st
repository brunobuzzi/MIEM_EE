other
renderOrbeonLinkIconOn: html for: aBpmTaskInstance

	aBpmTaskInstance processIsRunning ifFalse: [^self]. "if the process is paused or aborted no operation is possible with the task <aBpmTaskInstance>"

	"a granted user with edit permission"
	((aBpmTaskInstance isGrantedUser: self session user asBpmUser) or: [self session user esOperador]) 
	ifTrue: [^self createOrbeonLinkOn: html for: aBpmTaskInstance].
	"a user that has edit permission in other part of the process and does NOT have it this Transition, is granted to READ. 
	If the Form has not been created then there is NOTHING to view"
	((aBpmTaskInstance isGrantedUser: self session user asBpmUser) and: [aBpmTaskInstance hasForm]) 
	ifTrue: [^self createOrbeonLinkOn: html for: aBpmTaskInstance].

	"self createLinkForSeasideComponentOn: "