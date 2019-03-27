other
getCurrentCEE
	| cee |

	cee := self cache detect: [:each | each nombre = 'Certificados de eficiencia energética (CEE)' ] ifNone: [^nil].
	cee habilitaciones isEmpty ifTrue: [^nil].

	^cee habilitaciones asArray first