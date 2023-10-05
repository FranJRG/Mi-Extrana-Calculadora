<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="utility.Calcular"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MI EXTRAÑA CALCULADORA</title>

<style>

	body{
		background-color: aqua;
	}

	.form{
		margin: 20px;
		margin-left: 550px;
		margin-right: 550px;
		padding: 40px;
		background-color: #9D9ECF;
		border-style: solid;
		border-color: black;
		border-radius: 20px;
		box-shadow: 5px 5px 40px;
	}
	
	input{
		width: 290px;
		height: 30px;
	}
	
	.eliminar{
		margin: 10px;
		padding: 10px;
		background-color: yellow;
	}
	
	.añadir{
		margin: 10px;
		padding: 10px;
		background-color: alice-blue;
	}
	
	.calcular{
		margin: 10px;
		padding: 10px;
		background-color: grey;
	}
	
</style>

</head>
<body align="center">
	
	<h1>MI EXTRAÑA CALCULADORA</h1>
	
	<%!
	
		double fin = 0;  
	
	%>
	
	
	<%
				String operador = request.getParameter("operando");
				String valor = request.getParameter("valor");
				String valores = request.getParameter("valores");
				double resultado=0;	
	
				try{
					
					if(valores==null){
						valores="";
					}
					
					if(operador!=null && valor!=null){
						valores +=  valor + operador;
					}
				
				
					if(request.getParameter("eliminar")!=null){
						valores="";
					}
					
					if(request.getParameter("calcular")!=null){
				
						if(valor!=null && operador!=null){
							
							Calcular calcu = new Calcular();
							
							fin = calcu.resolve(valores);
							
							valores += "=" + fin; 
						}
				
					}
					
				}catch(Exception e){
					
					out.println(e.getLocalizedMessage());
					
				}
	
				
				
		%>
	<form class="form" method="post" action="calculadora.jsp">
	
		<textarea name="valores" rows="4" cols="24" placeholder="Aqui se irá mostrando el resultado"><%=valores%></textarea> <br>
		
		<br>
	
		<div class="numero">
			<input type="number" step="any" name="valor" placeholder="Introduce los valores deseados">
		</div>
		
		<br>
		
		<select name="operando">
			<option selected></option>
			<option value="+">+</option>
			<option value="-">-</option>
		</select> <br>

		
		<br>
		
		<button type="submit" name="añadir" class="añadir">Añadir valor</button>
		<button type="submit" name="calcular" class="calcular">Calcular</button>
		<button type="submit" name="eliminar" class="eliminar">Eliminar operacion</button>
	</form>
</body>
</html>