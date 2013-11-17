
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/public/header.jsp" %>
        <title>Inicio</title>
    </head>
    <body>
        <h1>Ingresar Datos</h1>


        <form action=“/app/j_spring_security_check” method=“post” class="form-signin">
            <input type=“text” class="input-block-level" placeholder="Usuario" name=“j_username”/>
            <input type=“password” class="input-block-level" placeholder="Contraseña" name=“j_password”/>
            <button class="btn btn-large btn-primary" type="submit">Ingresar</button>
        </form>
        
    </body>
</html>
