<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Socio</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <%@include file="/public/menuGeneral_1.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">

                <%@include file="/public/menuSocio.jsp" %>
                <div class="span9">




                    <div class="panel panel-default">

                        <div class="panel-heading">
                            <div class="icon">
                                <i class="icon-2x icon-list"></i>
                            </div>
                            <h4>Solicitudes</h4>
                        </div>



                        <div class="panel-body">


                            
                            <table class="table table-hover table-bordered">

                                <th class="header">Id Socio</th>
                                <th class="span3 header">Socio</th>
                                <th class="header">Local</th>
                                <th class="header">Campo</th>
                                <th class="header">Dia</th>
                                <th class="header">Hora Inicio</th>
                                <th class="header">Hora Fin</th>
                                <th class="header">Estado</th>
                                <th class="span1 header"></th>
                                <th class="span1 header"></th>
                                <th class="span1 header"></th>



                                <c:forEach var="camp" items="${solicitudes}">
                                    <tr>
                                        <td><c:out value="${camp.persona.id}"/></td>
                                        <td><c:out value="${camp.persona.getFullName()}"/></td>
                                        <td><c:out value="${camp.campo.local.descripcion}"/></td>
                                        <td><c:out value="${camp.campo.descripcion}"/></td>
                                        <td><c:out value="${camp.dia}"/></td>
                                        <td><c:out value="${camp.horaInicio}"/></td>
                                        <td><c:out value="${camp.horaFin}"/></td>
                                        
                                        
                                        <td>
                                            <c:if test="${camp.estado == 1}">
                                                <label class="label label-success">Aprobado</label>
                                            </c:if>
                                            <c:if test="${camp.estado != 1}">
                                                <label class="label label-warning">No Aprobado</label>
                                            </c:if>
                                        </td>
                                        <td><a href="<%=contextPath%>/socio/solicitud/listServicios/${camp.id}"><i class="icon-cogs"></i></a>
                                        </td>
                                        <td><a href="<%=contextPath%>/socio/solicitud/update/${camp.id}"><i class="icon-edit"></i></a>
                                        </td>

                                        <td><a href="<%=contextPath%>/socio/solicitud/delete/${camp.id}"><i class="icon-trash" style="color: red"></i></a>
                                        </td>

                                    </tr>
                                </c:forEach>
                            </table>

                            
                            

                        </div>


                    </div>









                </div>
            </div>
            <hr>
        </div>

        <%@include file="/public/footer.jsp" %>

    </body>
</html>
