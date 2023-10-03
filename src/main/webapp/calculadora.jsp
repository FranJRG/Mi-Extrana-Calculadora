<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MI EXTRA�A CALCULADORA</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
	
	<h1>MI EXTRA�A CALCULADORA</h1>
	
	<%
			
		String operador = request.getParameter("operando");
		String valor = request.getParameter("valor");
		String valores = request.getParameter("valores");
		double resultado=0;	
		
		if(valores==null){
			valores="";
		}
		
		if(operador!=null && valor!=null){
			valores += operador + valor;
		}
			
			
		if(request.getParameter("eliminar")!=null){
			valores="";
		}
		
		
	%>
	<form class="form-control" method="get" action="calculadora.jsp">
	
		<div class="form-group">
			<input type="text" class="form-control" name="valor" placeholder="Introduce los valores deseados">
		</div>
		
		<br>
		
		
		<textarea name="valores" rows="2" cols="24" placeholder="Introduzca valores"><%=valores%></textarea> <br>
		
		<br>
		
		<select name="operando">
			<option value="+">+</option>
			<option value="-">-</option>
		</select> <br>

		
		<br>
		
		<button type="submit" name="a�adir" class="btn btn-primary">A�adir valor</button>
		<button type="submit" name="calcular" class="btn btn-secondary">Calcular</button>
		<button type="submit" name="eliminar" class="btn btn-warning">Eliminar operacion</button>
	</form>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>