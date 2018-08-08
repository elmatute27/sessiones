<%@page session="true" language="java" import="java.util.*"%>
<%
String usuario="";
String numeroSTR = "";
HttpSession sesionOk=request.getSession();
numeroSTR = (String) sesionOk.getAttribute("puntaje");
int numero  = Integer.parseInt(numeroSTR);
numero  = numero +  1;
numeroSTR = String.valueOf(numero);
sesionOk.setAttribute("puntaje",numeroSTR); 
if(sesionOk.getAttribute("usuario")==null){
%>
<jsp:forward page="login.jsp">
<jsp:param name="error" value="Es obligatorio identificarse"/>
</jsp:forward>
<%
}else{
usuario = (String) sesionOk.getAttribute("usuario");
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
<% out.println("IdSesion:" + sesionOk.getId());%>
<a href="menu.jsp">Volver a Menu</a>

</html>