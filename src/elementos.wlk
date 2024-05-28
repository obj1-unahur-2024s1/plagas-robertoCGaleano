object nivelDeProduccion{
	var property nivelDeProduccion= 1000
}

class Hogar{
	
	var nivelMugre
	var confort
	
	method esBueno()= confort*0.5 >= nivelMugre
}

class Huerta{
	
	var produccion
	
	method esBueno()= produccion > nivelDeProduccion.nivelDeProduccion()
}

class Mascota{
	
	var nivelDeSalud
	
	method esBueno()= nivelDeSalud > 250
}