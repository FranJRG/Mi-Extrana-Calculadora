package utility;

public class Calcular {
	
	public double resolve(String cadena) {
		double resultado = 0;
		String almacen = "";
		String operador="";
		
		for(int i = 0 ; i<cadena.length(); i++) {
			
			if(Character.isDigit(cadena.charAt(i)) || cadena.charAt(i)=='.') {
				almacen += String.valueOf(cadena.charAt(i));
			}else if(operador.isEmpty() && cadena.charAt(i)!='.') {
				operador += String.valueOf(cadena.charAt(i));
				resultado = Double.valueOf(almacen);
				almacen = "";
			}else {
				
				if(!operador.isEmpty() && !almacen.isEmpty()) {
					if(operador.equals("+")) {
						resultado += Double.valueOf(almacen);
						operador="";
						almacen="";
					}else if(operador.equals("-")) {
						resultado -= Double.valueOf(almacen);
						operador="";
						almacen="";
					}
				}
				
				operador += String.valueOf(cadena.charAt(i));
				
			}
			
		}
		
		if(!almacen.isEmpty()) {
			double secondValue = Double.valueOf(almacen);
			if(operador.equals("+")) {
				resultado = resultado + secondValue; 
			}else if(operador.equals("-"))  {
				resultado = resultado - secondValue;
			}
			
		}
		
		return resultado;
	}
	
}
