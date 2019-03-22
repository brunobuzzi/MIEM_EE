other
renderSeasideFormLinkIconOn: html for: aBpmSeasideTaskInstance

	"a granted user with edit permission"
	(aBpmSeasideTaskInstance isGrantedUser: self session user asBpmUser) 
	ifTrue: [^self createSeasideLinkOn: html for: aBpmSeasideTaskInstance].