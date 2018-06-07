<%@page import="java.util.*" session="true" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@page import="seguridad.*"%>
<%@page import="java.sql.*"%>

<%
    if(request.getParameter("btnIniciar")!=null){
            try{
                String usuario="",password="";
                String passwordEncriptado="";
                usuario = request.getParameter("usuario");
                password = request.getParameter("password");
                JEncriptador objeto = new JEncriptador();
                passwordEncriptado= objeto.generarMD5(password);
                
                Connection conexion = objeto.abrirConexion();
                String consulta ="";
                consulta = "select * from usuarios WHERE user ='"+ usuario +"'";
                consulta += "AND password='"+ passwordEncriptado + "'";
                
                Statement query = conexion.createStatement();
                
                ResultSet resultado = query.executeQuery(consulta);
                int cuantosRegistros=0;
                cuantosRegistros=objeto.obtenerFilasConsulta(resultado);
                
                if(cuantosRegistros==0){
                    out.println("<script>alert('Usuario y password incorrecto');");
                    out.println("location.replace('../login.jsp');</script>");
                }else{
                    int nivelUsuario;
                    HttpSession objSesion= request.getSession();
                    nivelUsuario=resultado.getInt("nivel");
                    objSesion.setAttribute("nivel", nivelUsuario);
                    objSesion.setAttribute("usuario", usuario);
                    out.println("<script>location.replace('../index.jsp');</script>");
                }
                objeto.cerrarConexion(conexion);
            }catch(Exception e){
                out.println("Error: "+ e.getMessage());
            }
    }
    %>