<%-- 
    Document   : login
    Created on : 12/11/2013, 09:24:08 PM
    Author     : JulioZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/public/header.jsp" %>
        <title>JSP Page</title>
        
        <link href="<%=request.getContextPath()%>/public/app/css/login.css" rel="stylesheet"/>
        
    </head>
    <body>
        

        
        


        <div class="container">

            
            <div class="span4 offset4">
                
             
                
                <div class="padded">
                    
                    
                             <div class="banner">
        <h1>Ingreso al Sistema</h1>    
        </div>  
                    
                    
                    <div class="login box" style="margin-top: 80px;">
                        <div class="box-header">
                            <span class="title">Login</span>
                        </div>
                        <div class="box-content padded">
                            <form class="separate-sections">
                                <div class="input-block-level">
                                    <span class="add-on" href="#">
                                        <i class="icon-user"></i>
                                    </span>
                                    <input type="text" placeholder="usuario">
                                </div>
                                <div class="input-prepend">
                                    <span class="add-on" href="#">
                                        <i class="icon-key"></i>
                                    </span>
                                    <input type="password" placeholder="contraseña">
                                </div>
                                <div>
                                    <a class="btn rc-button-submit">
                                       Inicial sesión
                                        <i class="icon-signin"></i>
                                    </a>
                                </div>
                            </form>

                        </div>
                    </div>

                </div>
            </div>
        </div>


    </body>
</html>
