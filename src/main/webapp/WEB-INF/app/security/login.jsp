
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <h1>Hello World!</h1>


        <form action=“/app/j_spring_security_check” method=“post” class="form-signin">
            <input type=“text” name=“j_username”/>
            <input type=“password” name=“j_password”/>
            <button class="btn btn-large btn-primary" type="submit">Ingresar</button>
        </form>
        
    </body>
</html>
