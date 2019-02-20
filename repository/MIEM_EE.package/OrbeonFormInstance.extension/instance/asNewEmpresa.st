*MIEM_EE
asNewEmpresa

	^Empresa new initialize
			razonSocial: self empRazonSocial;
			rut: self empRut;
			ciiu: self empRut;
			telefono: self empTelefono;
			fax: self empFax;
			direccion: self empDireccion;
			mail: self empMail;
			departamento: self empDepartamento;
			clasificacion: self empClasificacion;
			certificadoPyme: self empCertificadoPyme;
			cuentaBancaria: self asNewCuentaBancaria;
			yourself