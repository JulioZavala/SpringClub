
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">

                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">

                    <div class="row">
                        <a class=" btn btn-primary pull-right" href="<%=contextPath%>/adm/servicio/new"> Nuevo </a>
                        <h1> Servicios </h1>
                    </div>


                        <table class="table table-hover">
                            
                            <th class="span7"> Descripción </th>
                            <th> Costo / Hora </th>
                            <th></th>
                            
                            <c:forEach var="serv" items="${servicios}">
                            <tr>
                                <td><c:out value="${serv.descripcion}"/></td>
                                <td><c:out value="${serv.costoHora}"/></td>
                            
                            
                            
                            
                            <td> 
                                    <div class="btn-group">
                                        <a class="dropdown-toggle" data-toggle="dropdown" role="menu"  href="#">
                                          <i class="icon-cog"></i>
                                        </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href="<%=contextPath%>/adm/servicio/update/${serv.id}">
                                                Editar<a>
                                            </li>
                                            <li>
                                                <a href="<%=contextPath%>/adm/servicio/delete/${serv.id}">
                                                    Eliminar<a>
                                            </li>
                                        </ul>
                                      </div>
                                </td>
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            </tr>
                            </c:forEach>
                            
                            
                            
                            
                            
                            
                        </table>
                        
                        
                        

                        
                        
                        
                        
                        
                </div>
            </div>
            <hr>
        </div>

    <%@include file="/public/footer.jsp" %>

    </body>
</html>
