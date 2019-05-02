*MIEM_EE_WebRestApiLayer
getConversionForFuenteEnergia: codigoFuenteEnergia precio: precio consumo: consumo
	""
	<get>
    <path: '/conversionfuenteenergia?fuente={1}&precio={2}&consumo={3}'> 
	<produces: 'text/xml'>
	| fuente conversion valorTep precioConverted emsionesCO2 consumoConverted |

	fuente := FuenteEnergia getFuenteEnergiaWithCode: codigoFuenteEnergia ifAbsent: [^'<error>Fuente de energia no existe</error>'].

	conversion  := fuente getConversionFor: Date today.

	precioConverted := [Number fromString: precio] on: Error do: [:ex | ^'<error>Precio NO valido</error>'].
	consumoConverted := [Number fromString: consumo] on: Error do: [:ex | ^'<error>Consumo NO valido</error>'].
	valorTep := conversion factorConversionTEP * consumoConverted.
	emsionesCO2 := conversion factorEmisionCO2 * consumoConverted * conversion factorConversionTEP.

	^'<conversion>
		<fuente>',conversion nombreFuenteEnergia,'</fuente>
		<unidad>',conversion nombreUnidad,'</unidad>
		<conversionTEP>',conversion factorConversionTEP printString,'</conversionTEP>
		<emisionCO2>',conversion factorEmisionCO2 printString,'</emisionCO2>
		<valorTEP>',valorTep printString,'</valorTEP>
		<valorEmisionCO2>',emsionesCO2 printString,'</valorEmisionCO2>
	</conversion>'