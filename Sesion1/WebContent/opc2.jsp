<%@page session="true" language="java" import="java.util.*"%>
<%
String usuario="";
HttpSession sesionOk=request.getSession();
String numeroSTR = "";

numeroSTR = (String) sesionOk.getAttribute("numero");
int numero  = Integer.parseInt(numeroSTR);
numero  = numero +  1;
numeroSTR = String.valueOf(numero);
sesionOk.setAttribute("numero",numeroSTR); 


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
<b>Numero: </b><%out.println(numeroSTR);%><p>
<% out.println("IdSesion:" + sesionOk.getId());%>
<a href="menu.jsp">Volver a Menu</a>

</html>