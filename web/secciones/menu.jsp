<%
    HttpSession sesionEstablecida = request.getSession();
    if(sesionEstablecida.getAttribute("usuario") == null){
        out.println("<script>alert('Acceso Restringido');");
        out.println("location.replace('../login.jsp');</script>");
    }
%>
                    <div class="col-md-6">
	              <div class="navbar navbar-inverse" role="banner">
	                  <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	                    <ul class="nav navbar-nav">
	                      <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><% out.println(sesionEstablecida.getAttribute("usuario"));%><b class="caret"></b></a>
	                        <ul class="dropdown-menu animated fadeInUp">
	                          <li><a href=""><% out.println(sesionEstablecida.getAttribute("nivel"));%></a></li>
	                          <li><a href="funciones/cerrar-sesion.jsp">Cerrar Sesion</a></li>
	                        </ul>
	                      </li>
	                    </ul>
	                  </nav>
	              </div>
	           </div>