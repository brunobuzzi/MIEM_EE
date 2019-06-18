*MIEM_EE
asNewRepresentacion

	^Representacion new initialize
			nombre: self repNombre;
			apellido: self repApellido;
			cargo: self repCargo;
			telefono: self repTelefono;
			mail: self repMail;
			tipo: self repTipo;
			esTotal: self repEsTotal;
			aprobada: false;
			habilitada: false;
			setUsuario: (self valueAt: 'username');
			yourself