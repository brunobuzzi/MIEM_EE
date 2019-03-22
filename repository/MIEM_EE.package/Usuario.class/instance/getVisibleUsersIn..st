bpm interaction
getVisibleUsersIn: aBpmEnvironment
	"Answer a collection of users <BpmUser> where the receiver is the admin of each user of the collection"

	^self class cache