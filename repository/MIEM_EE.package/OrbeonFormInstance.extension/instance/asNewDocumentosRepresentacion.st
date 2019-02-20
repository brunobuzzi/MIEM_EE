*MIEM_EE
asNewDocumentosRepresentacion
	| documentos |

	documentos := OrderedCollection new.

	(self getSectionsNamed: 'section-12') keysAndValuesDo: [:index :each | | doc |
		doc := Documento new.
		doc nombre: (self docUpload at: index). "in repeteable section answer a collection with all values"
		documentos add: doc.
	].

	^documentos