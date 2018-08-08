<%@ page contentType="text/html; charset=iso-8859-1" session="true"   language="java" import="java.io.*,java.util.*,java.net.*,java.sql.*"%>
 <html> 
<head> 
<script> 
function validateForm() 
{ if(document.frm.usuario.value=="") 
  { alert("Ingrese Usuario"); 
    document.frm.username.focus();
    return false; } 
    else if(document.frm.clave.value=="")
 { alert("Ingrese clave"); 
document.frm.pwd.focus(); 
return false; } }
</script> 

</head> 
<body> 
<form name="frm" method="get" action="sesion1.jsp" onSubmit="return validateForm()">
 <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr> <td width="22%"> </td> 
<td width="78%"> </td> </tr> 
 <tr><td>Ingrese DNI de usuario</td> 
 <td><input type="text" name="usuario" /></td> </tr>
 <tr> <td>Ingrese clave</td> <td><input type="text" name="clave" /></td> </tr> 
 <tr> <td>
 		<% if(request.getParameter("error")!=null) 
 		{  out.println(request.getParameter("error"));
 		}
 		%>
  </td> 
<td><input type="submit" name="submit" value="Submit"></td> </tr> <tr> <td> </td>
 <td> </td> </tr> </table>
 </form>
 </body> 
</html>