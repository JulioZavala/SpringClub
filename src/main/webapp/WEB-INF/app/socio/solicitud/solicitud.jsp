<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Socio</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="/public/header.jsp" %>
        <link href="<%=request.getContextPath()%>/public/fullcalendar/fullcalendar.css" rel="stylesheet" type='text/css'/>
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
                            
                           <div id='calendar' ref="${usuario.id}"></div> 
                            
                        </div>
                        


                    </div>








                </div>
            </div>
            <hr>
        </div>

        <%@include file="/public/footer.jsp" %>
        <script src="<%=request.getContextPath()%>/public/fullcalendar/fullcalendar.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/public/fullcalendar/calendarsettings.js"></script>
    </body>
</html>
