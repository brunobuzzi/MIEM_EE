cache
mappedCodigos
	| codes |

	codes := Dictionary new.
	codes at: 'aserrin' put: 'Aserrín';
		at: 'bagazo' put: 'Bagazo';
		at: 'biodiesel' put: 'Biodiesel';
		at: 'bioetanol' put: 'Bioetanol';
		at: 'carbon-mineral' put: 'Carbón mineral';
		at: 'carbon-vegetal' put: 'Carbón vegetal';
		at: 'cascara-de-arroz' put: 'Cáscara de arroz';
		at: 'cascara-de-girasol' put: 'Cáscara de girasol';
		at: 'casullo-de-cebada' put: 'Casullo de cebada';
		at: 'chips' put: 'Chips';
		at: 'coque-de-carbon' put: 'Coque de carbón';
		at: 'coque-de-petroleo' put: 'Coque de petróleo';
		at: 'coque-de-petroleo-importado' put: 'Coque de petróleo importado';
		at: 'electricidad-de-la-red' put: 'Electricidad de la red';
		at: 'fuel-oil-calefaccion' put: 'Fuel oil calefacción';
		at: 'fuel-oil-intermedio' put: 'Fuel oil intermedio';
		at: 'fuel-oil-pesado' put: 'Fuel oil pesado';
		at: 'gas-natural' put: 'Gas natural';
		at: 'gasoil-10s' put: 'Gasoil 10S';
		at: 'gasoil-50s' put: 'Gasoil 50S';
		at: 'gasolina-aviacion-100-130' put: 'Gasolina aviación 100/130';
		at: 'gasolina-premium-97-30sp' put: 'Gasolina premium 97 30SP';
		at: 'gasolina-super-95-30sp' put: 'Gasolina super 95 30SP';
		at: 'glp' put: 'GLP';
		at: 'lena' put: 'Leña';
		at: 'licor-negro' put: 'Licor negro' ;
		at: 'pellets-de-madera' put:  'Pellets de madera';
		at: 'propano' put: 'Propano';
		at: 'queroseno' put: 'Queroseno';
		at: 'residuos-forestales' put: 'Residuos forestales';
		at: 'supergas' put: 'Supergas'.

	^codes