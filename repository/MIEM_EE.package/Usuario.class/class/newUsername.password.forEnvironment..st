other
newUsername: username password: password forEnvironment: aBpmEnvironment
	"The receiver create a new <BpmUser> named <username> with password <username> for environment <aBpmEnvironment>"
	| bpmUser newUser |

	(self getUserNamed: username ifAbsent: []) ifNotNil: [:user | ^user].
 
	bpmUser := self defaultBpmUserClass getExistingOrNewUserNamed: username password: password forEnvironment: aBpmEnvironment.
	newUser := self new initialize.
	newUser nombre: username;
				clave: password.

	^newUser