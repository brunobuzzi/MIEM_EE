cache
populateCache

	self initializeCache.

	(self new fuenteEnergia: FuenteEnergia aserrin; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.2346226974; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia bagazo; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.235; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia biodiesel; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP:0.0005066; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia bioetanol; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP: 0.0005066; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia carbonMineral; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.7; factorEmisionCO2: 4.480732) addToCache.
	(self new fuenteEnergia: FuenteEnergia carbonVegetal; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.75; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia cascaraDeArroz; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.27; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia cascaraDeGirasol ; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.38; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia casulloDeCebada; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.3712; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia chips; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.22025333133; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia coqueDeCarbon; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.68; factorEmisionCO2: 4.480732) addToCache.
	(self new fuenteEnergia: FuenteEnergia coqueDePetroleo; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.9386; factorEmisionCO2: 4.08291) addToCache.
	(self new fuenteEnergia: FuenteEnergia coqueDePetroleoImportado; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.8; factorEmisionCO2: 4.08291) addToCache.
	(self new fuenteEnergia: FuenteEnergia electricidadDeLaRed; unidadEnergetica: UnidadEnergetica kilovatioHora; fechaActualizacion: Date today; factorConversionTEP: 0.000086; factorEmisionCO2: 1.76744186046512) addToCache.
	(self new fuenteEnergia: FuenteEnergia fuelOilCalefaccion; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP: 0.0009593; factorEmisionCO2: 3.2412024) addToCache.
	(self new fuenteEnergia: FuenteEnergia fuelOilIntermedio; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP: 0.0009532; factorEmisionCO2: 3.2412024) addToCache.
	(self new fuenteEnergia: FuenteEnergia fuelOilPesado; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP: 0.0009638; factorEmisionCO2: 3.2412024) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasNatural; unidadEnergetica: UnidadEnergetica metrosCubicos; fechaActualizacion: Date today; factorConversionTEP: 0.00083; factorEmisionCO2: 2.3492436) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasoil10S; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP: 0.0008584; factorEmisionCO2: 3.1030116) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasoil50S; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP: 0.0008687; factorEmisionCO2: 3.1030116) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasolinaAviacion100_130; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP: 0.0007581; factorEmisionCO2: 2.9020068) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasolinaPremium97_30SP; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP: 0.0008011; factorEmisionCO2: 2.9020068) addToCache.
	(self new fuenteEnergia: FuenteEnergia gasolinaSuper95_30SP; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP: 0.0007935; factorEmisionCO2: 2.9020068) addToCache.
	(self new fuenteEnergia: FuenteEnergia glp; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 1.09; factorEmisionCO2: 2.6423756) addToCache.
	(self new fuenteEnergia: FuenteEnergia lena; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.27; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia licorNegro; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.27; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia pelletsDeMadera; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.4696851; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia propano; unidadEnergetica: UnidadEnergetica metrosCubicos; fechaActualizacion: Date today; factorConversionTEP: 0.0005678; factorEmisionCO2: 2.6423756) addToCache.
	(self new fuenteEnergia: FuenteEnergia queroseno; unidadEnergetica: UnidadEnergetica litro; fechaActualizacion: Date today; factorConversionTEP: 0.0008271; factorEmisionCO2: 3.01088444) addToCache.
	(self new fuenteEnergia: FuenteEnergia residuosForestales; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 0.22788521454; factorEmisionCO2: 0) addToCache.
	(self new fuenteEnergia: FuenteEnergia supergas; unidadEnergetica: UnidadEnergetica tonelada; fechaActualizacion: Date today; factorConversionTEP: 1.0878; factorEmisionCO2: 2.6423756) addToCache.