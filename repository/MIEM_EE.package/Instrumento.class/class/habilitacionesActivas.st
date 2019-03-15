other
habilitacionesActivas
	| todas |

	todas := OrderedCollection new.

	self cache do: [:each | todas addAll: each habilitacionesActivas].

	^todas