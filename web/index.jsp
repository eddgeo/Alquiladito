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
                <div class="panel-heading">
                    <div class="text-center"><h1>Bienvenido</h1></div>
                </div>
    <div class="panel-body">
        <center><img src="imgs/logo.png" width="100"></center>
    </div>
                </div>
            </div>
        </div>
    </div>
    
    <%--pie de pagina--%>
    <jsp:include page='secciones/footer.jsp'></jsp:include>
