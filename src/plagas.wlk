import elementos.*

class Plaga {
	var poblacion
	
	method transmiteEnfermedades()=
		poblacion >= 10
	method atacarA(unElem){
		poblacion = poblacion + poblacion*0.10
		unElem.esAtacadoPor(self)
	}
}

class Cucarachas inherits Plaga{
	var pesoPromedioBicho
	
	method nivelDanio()= poblacion * 0.5 
	override method transmiteEnfermedades()= super() and pesoPromedioBicho >= 10
	override method atacarA(unElem){
		super(unElem) and pesoPromedioBicho + 2 
		unElem.esAtacadoPor(self)
	}
}
	

class Pulgas inherits Plaga{
	
	method nivelDanio()= poblacion *2
		
}

class Garrapatas inherits Pulgas{
	override method atacarA(unElem){
		poblacion = poblacion + poblacion*0.20
		unElem.esAtacadoPor(self)
	}
	
}

class Mosquitos inherits Plaga{
	
	method nivelDanio()= poblacion
	override method transmiteEnfermedades()= super() and poblacion % 3 == 0
}

