*MIEM_EE_WebRestApiLayer
getConversionForFuenteEnergia
	""
	<post>
    <path: '/conversionfuenteenergia'> 
	<produces: 'text/xml'>
	| xmlParser codigoFuenteEnergia consumo precio fuente conversion valorTep precioConverted emsionesCO2 consumoConverted |

	xmlParser := XMLDOMParser parse: (self requestContext request bodyDecodeUsing: 'utf-8').
	codigoFuenteEnergia := (xmlParser findElementNamed: 'fuenteEnergia') ifNotNil: [:element | element value innerXML] ifNil: ['^<error>Fuente de energia no existe</error>'].
	precio := (xmlParser findElementNamed: 'precioEnergetico') ifNotNil: [:element | element value innerXML] ifNil: ['^<error>No hay precio</error>'].
	consumo := (xmlParser findElementNamed: 'consumoEnergia') ifNotNil: [:element | element value innerXML] ifNil: ['^<error>No hay consumo</error>'].

	fuente := FuenteEnergia getFuenteEnergiaWithCode: codigoFuenteEnergia ifAbsent: [^'<error>Fuente de energia no existe</error>'].

	conversion := fuente getConversionFor: Date today.

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