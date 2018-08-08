<%@page session="true"   language="java" import="java.util.*"%>
<%
String usuario="";
String numeroSTR="";
HttpSession sesionOk=request.getSession();
if(sesionOk.getAttribute("usuario")==null){
%>
<jsp:forward page="login.jsp">
<jsp:param name="error" value="Es obligatorio identificarse"/>
</jsp:forward>
<%
}else{
usuario = (String) sesionOk.getAttribute("usuario");
//numeroSTR = (String) sesionOk.getAttribute("numero");
//int numero  = Integer.parseInt(numeroSTR);
int numero = 1;
numero  = numero +  1;
numeroSTR = String.valueOf(numero);
sesionOk.setAttribute("numero",numeroSTR); 
//*out.println("<h1>"+usuario+"<h1>");//
}
%>
<html>
<head><title>Proceso de login</title>
</head>
<body>
<b>PROCESO DE IDENTIFICACIÓN</b><p>
<b>Menú de administración</b><br>

<b>Usuario activo: </b><%=usuario%><p>
<b>Numero: </b><%out.println(numeroSTR);%><p>
<% out.println("IdSesion:" + sesionOk.getId());%>
<%  %>
<li><a href="opc1.jsp">Crear nuevo usuario</a>
<li><a href="opc2.jsp">Borrar un usuario</a>
<li><a href="opc3.jsp">Cambiar clave</a>
<p>
<li><a href="cerrarsesion.jsp">Cerrar sesión</a>
</body>
</html>