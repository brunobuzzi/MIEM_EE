*MIEM_EE
asNewCuentaBancaria

	^CuentaBancaria new initialize
			banco: self empCuentaBanco;
			sucursal: self empCuentaSucursal;
			titular: self empCuentaTitular;
			numero: self empCuentaNumero;
			tipo: self empCuentaTipo;
			moneda: (Moneda getMonedaNamed: self empCuentaMoneda);
			yourself