<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" session="true" %> 
<% 
  // declarando y creando objetos globales 
 Connection canal = null; 
 ResultSet tabla= null; 
 Statement instruccion=null; 
 String strcon = "jdbc:mysql://localhost:3306/escuela?user=root&password=admin"; 
 
   // abriendo canal o enlace en su propio try-catch 
   try  
  { Class.forName("com.mysql.jdbc.Driver").newInstance(); 
   canal=DriverManager.getConnection(strcon); 
   instruccion = canal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 
   ResultSet.CONCUR_UPDATABLE); 
  }  
   catch(java.lang.ClassNotFoundException e){} catch(SQLException e) {}; 
   //leyendo tabla en disco y pasandola al resultset 
   out.println(canal);
   String usuario="";
   String clave="";
  if(request.getParameter("usuario")!=null)
     usuario = request.getParameter("usuario");

   if(request.getParameter("clave")!=null && request.getParameter("usuario")!=null)
     clave = request.getParameter("clave");
   //*
   String sqlStr= "select * from alumnos where dni = "+ usuario + " and apellido = '"+ clave + "'";
   
   
   if (request.getParameter("usuario")!=null){
	   
	   out.println(sqlStr);
   try  
  { tabla = instruccion.executeQuery(sqlStr); 
    // mandando resultset
     
     if (tabla.next())
     {
    	 out.println("<br>"); 
    	 out.println("<TD>"+tabla.getInt(1)+"</TD>"); 
    	 out.println("<TD>"+tabla.getString(2)+"</TD>");
    	 out.println("<br>"); 
    	 out.println( "usuario existente");
    	 out.println("<br>"); 
    	 out.println(usuario);
    	 
    	 HttpSession sesionOk=request.getSession();
    	 sesionOk.setAttribute("usuario",tabla.getInt(1));
    	    %>
    	   
    	    
    	    <%
     }
     else{
       out.println("usuario o/o contraseña erroneas");
     }
     
    // cerrando resultset 
    tabla.close(); instruccion.close();canal.close(); 
  } //fin try no usar ; al final de dos o mas catchs 
   catch(SQLException e) {};;
   }
 
   out.println("<FORM ACTION=menu.jsp METHOD=get>"); 
   out.println("<INPUT TYPE=SUBMIT NAME=OK VALUE=CONSULTAR><BR>"); 
   out.println("</FORM>"); 
  // construyendo forma dinamica 
%> 


