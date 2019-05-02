cache
validNamesAndMethods
	| collection |

	collection := OrderedCollection new.
	collection add: #('Aserrín' 'aserrin');
		add: #('Bagazo' 'bagazo');
		add: #('Biodiesel' 'biodiesel'); 
		add: #('Bioetanol' 'bioetanol');
		add: #('Carbón mineral' 'carbonMineral');
		add: #('Carbón vegetal' 'carbonVegetal');
		add: #('Cáscara de arroz' 'cascaraDeArroz');
		add: #('Cáscara de girasol' 'cascaraDeGirasol');
		add: #('Casullo de cebada' 'casulloDeCebada');
		add: #('Chips' 'chips');
		add: #('Coque de carbón' 'coqueDeCarbon');
		add: #('Coque de petróleo' 'coqueDePetroleo');
		add: #('Coque de petróleo importado' 'coqueDePetroleoImportado');
		add: #('Electricidad de la red' 'electricidadDeLaRed'); 
		add: #('Fuel oil calefacción' 'fuelOilCalefaccion');
		add: #('Fuel oil intermedio' 'fuelOilIntermedio');
		add: #('Fuel oil pesado' 'fuelOilPesado');
		add: #('Gas natural' 'gasNatural');
		add: #('Gasoil 10S' 'gasoil10S');
		add: #('Gasoil 50S' 'gasoil50S');
		add: #('Gasolina aviación 100/130' 'gasolinaAviacion100_130');
		add: #('Gasolina premium 97 30SP' 'gasolinaPremium97_30SP');
		add: #('Gasolina super 95 30SP' 'gasolinaSuper95_30SP');
		add: #('GLP' 'glp');
		add: #('Leña' 'lena');
		add: #('Licor negro' 'licorNegro');
		add: #('Pellets de madera' 'pelletsDeMadera');
		add: #('Propano' 'propano');
		add: #('Queroseno' 'queroseno');
		add: #('Residuos forestales' 'residuosForestales');
		add: #('Supergas' 'supergas').

	^collection