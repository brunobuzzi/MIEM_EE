*MIEM_EE
asNewInstalaciones
	| instalaciones |

	instalaciones := OrderedCollection new.

	(self getSectionsNamed: 'section-12') keysAndValuesDo: [:index :each | | instalacion |
		instalacion := Instalacion new.
		instalacion ciudad: (self instCiudad at: index); "in repeteable section answer a collection with all values"
			localidad: (self instLocalidad at: index);
			mail: (self instMail at: index);  
			telefono: (self instTelefono at: index); 
			nombre: (self instNombre at: index); 
			direccion: (self instDireccion at: index); 
			departamento: (self instDepartamento at: index); 
			fax: (self instFax at: index).
		instalaciones add: instalacion.
	].

	^instalaciones