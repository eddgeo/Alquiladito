<%@page import="java.util.*" session="true" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@page import="seguridad.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Alquiladito</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
        <script src="bootstrap/js/validaciones.js"></script>
        
    </head>
      <body class="login-bg">
            <div>
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
                                      	<!-- Logo -->
                                    <div class="row">
                                        <h1><img width="100" src="imgs/logo.png"></h1>
                                    </div>
			            <div class="content-wrap">
			                <h1>Inicia Sesión</h1>
                                        <form method="post" action="funciones/iniciar.sesion.jsp" onsubmit="return validarLogin();">
                                            <input class="form-control" type="text" name="usuario" id="usuario" placeholder="Usuario">
                                        <br>
                                        <input class="form-control" type="password" name="password" id="password" placeholder="Password">
			                <div class="action">
                                            <input type="submit" class="btn btn-primary signup" name="btnIniciar" id="btnIniciar" value="Aceptar">
			                </div>
                                        </form>
			            </div>
			        </div>
			    </div>
			</div>
		</div>
	</div>
  </body>
</html>