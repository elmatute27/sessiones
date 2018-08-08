<%@page contentType="text/html;charset=iso-8859-1"
session="true" language="java" import="java.util.*"%>
<html>
<head><title>Identificar Usuario - Sesion</title>
</head>
<body>
<b>Verificación de usuario</B>
<p>
<%
if(request.getParameter("error")!=null)
{
out.println(request.getParameter("error"));
}
%>
<form action="checklogin.jsp" method="post">
  usuario:<input type="text" name="usuario"size=20><br>
  clave:<input type="text" name="clave"size=20><br>
  <input type="submit" value="enviar"><br>
</form>
</body>
</html>