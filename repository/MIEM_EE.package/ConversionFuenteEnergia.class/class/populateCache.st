other
populateCache

	self initializeCache.

	(self new fuenteEnergia: FuenteEnergia aserrin; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.2346226974; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia bagazo; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.235; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia biodiesel; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP:0.0005066; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia bioetanol; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP: 0.0005066; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia carbonMineral; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.7; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia carbonVegetal; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.75; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia cascaraDeArroz; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.27; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia cascaraDeGirasol ; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.38; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia casulloDeCebada; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.3712; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia chips; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.22025333133; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia coqueDeCarbon; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.68; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia coqueDePetroleo; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.9386; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia coqueDePetroleoImportado; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.8; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia electricidadDeLaRed; unidadEnergetica: UnidadEnergetica kilovatioHora; fechaActulizacion: Date today; factorConversionTEP: 0.000086; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia fuelOilCalefaccion; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP: 0.0009593; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia fuelOilIntermedio; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP: 0.0009532; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia fuelOilPesado; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP: 0.0008312; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasNatural; unidadEnergetica: UnidadEnergetica metrosCubicos; fechaActulizacion: Date today; factorConversionTEP: 0.00083; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasoil10S; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP: 0.00085; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasoil50S; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP: 0.00087; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasolinaAviacion100_130; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP: 0.00083; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasolinaPremium97_30SP; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP: 0.000801; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasolinaSuper95_30SP; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP: 0.000794; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia glp; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 1.09; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia lena; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.27; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia licorNegro; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.27; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia pelletsDeMadera; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.47; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia propano; unidadEnergetica: UnidadEnergetica metrosCubicos; fechaActulizacion: Date today; factorConversionTEP: 0.0005678; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia queroseno; unidadEnergetica: UnidadEnergetica litro; fechaActulizacion: Date today; factorConversionTEP: 0.000827; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia residuosForestales; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 0.228; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia supergas; unidadEnergetica: UnidadEnergetica tonelada; fechaActulizacion: Date today; factorConversionTEP: 1.0878; factorEmisionCO2: 0) addToCache.