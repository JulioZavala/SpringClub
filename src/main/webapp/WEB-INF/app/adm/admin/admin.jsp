
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Administradores Page</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">

                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">


                    
                    
                    <div class="row">
                        <a class=" btn btn-primary pull-right" href="<%=contextPath%>/adm/admin/new"> Nuevo </a>
                        <h1> Administradores </h1>
                    </div>


                        <table class="table table-hover">
                            
                            <th class="span3">Nombre</th>
                            <th>Email</th>
                            <th>Celular</th>
                            <th>Sexo</th>
                            <th>Dirección</th>
                            <th>Estado</th>
                            <th></th>
                            
                            <c:forEach var="adm" items="${admins}">
                            <tr>
                                <td><c:out value="${adm.getFullName()}"/></td>
                                <td><c:out value="${adm.Email}"/></td>
                                <td><c:out value="${adm.Celular}"/></td>
                                <td><c:out value="${adm.Sexo}"/></td>
                                <td><c:out value="${adm.Direccion}"/></td>
                                <td>
                                    <c:if test="${adm.estado == 1}">
                                        <label class="label label-success">Activo</label>
                                    </c:if>
                                    <c:if test="${adm.estado != 1}">
                                        <label class="label label-warning">Inactivo</label>
                                    </c:if>
                               </td>
                                                                                    
                            <td> 
                                    <div class="btn-group">
                                        <a class="dropdown-toggle" data-toggle="dropdown" role="menu"  href="#">
                                          <i class="icon-cog"></i>
                                        </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href="<%=contextPath%>/adm/admin/update/${adm.id}">
                                                Editar<a>
                                            </li>
                                            <li>
                                                <a href="<%=contextPath%>/adm/admin/delete/${adm.id}">
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