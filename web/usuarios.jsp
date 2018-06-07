<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" session="true" %>

    <%--encabezado--%>
    <jsp:include page='secciones/header.jsp'></jsp:include>
                    
    <%--Menu usuario--%>
    <jsp:include page='secciones/menu.jsp'></jsp:include>
                   
    <%--Menu lateral--%>          
    <jsp:include page='secciones/sidebar.jsp'></jsp:include>

    <%--contenedor central--%>
        		  <div class="col-md-10">
	  			<div class="row">
	  				<div class="col-md-12">
	  					<div class="content-box-large">

			  				<div class="panel-body">
                                                            <div class="input-group form">
                                                                <input type="text" class="form-control" placeholder="Buscar usuario...">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-primary" type="button">Buscar</button>
                                                                </span>
                                                            </div>
			  			
                                            
                                            <%--Tabla--%>
                            
  				<div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="text-left">Autos</div>
						</div>
		  				<div class="panel-body">
		  					<table class="table table-striped">
				              <thead>
				                <tr>
				                  <th>Codigo</th>
				                  <th>Marca</th>
				                  <th>Modelo</th>
                                                  <th>A&ntilde;o</th>
                                                  <th>VIN</th>
                                                  <th>Placa</th>
                                                  <th>Estado</th>
                                                  <th>Acci&oacute;n</th>
				                </tr>
				              </thead>
				              <tbody>
				                <tr>
				                  <td>1</td>
				                  <td>Toyota</td>
				                  <td>Corolla</td>
				                  <td>1983</td>
                                                  <td>123456789</td>
                                                  <td>P 147147</td>
                                                  <td>Disponible</td>
                                                  <td><a href="#">Editar</td>
				                </tr>
				                <tr>
				                  <td>2</td>
				                  <td>Toyota</td>
				                  <td>Corolla</td>
				                  <td>1983</td>
                                                  <td>123456789</td>
                                                  <td>P 147147</td>
                                                  <td>Alquilado</td>
                                                  <td><a href="#">Editar</td>

				                </tr>
                                                <tr>
				                  <td>3</td>
				                  <td>Toyota</td>
				                  <td>Corolla</td>
				                  <td>1983</td>
                                                  <td>123456789</td>
                                                  <td>P 147147</td>
                                                  <td>Disponible</td>
                                                  <td><a href="#">Editar</td>

				                </tr>
				              </tbody>
				            </table>
		  				</div>
		  			</div>
  				</div>
</div>
	  				</div>
            </div>
	</div>
                            			  				</div>
    
    <%--pie de pagina--%>
    <jsp:include page='secciones/footer.jsp'></jsp:include>