other
showConversiones

	(arena isKindOf: WAConversionesBrowser)
	ifTrue: [^arena].

	^WAConversionesBrowser parent: self