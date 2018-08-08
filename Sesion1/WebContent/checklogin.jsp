<%@page contentType="text/html;charset=iso-8859-1"
session="true" language="java" import="java.util.*"%>
<%
String usuario="";
String clave="";
String numeroSTR = "";
int numero = 1;
if(request.getParameter("usuario")!=null)
   usuario=request.getParameter("usuario");

if(request.getParameter("clave")!=null)
    clave=request.getParameter("clave");

   out.println(usuario);
   out.println(clave);
   
if(usuario.equals("matute") && clave.equals("capo")){
	
	HttpSession sesionOk=request.getSession();
    numero = numero + 1;
    numeroSTR = String.valueOf(numero);
    sesionOk.setAttribute("usuario",usuario);
    sesionOk.setAttribute("puntaje",numeroSTR);
    %>
    <jsp:forward page="menu.jsp"/>
    
    <%
   }else{
     %>
      <jsp:forward page="login.jsp">
      <jsp:param name="error" value="Usuario y/o clave incorrectos.<br>Vuelve a intentarlo."/>
      </jsp:forward>
    <%
    }
%>