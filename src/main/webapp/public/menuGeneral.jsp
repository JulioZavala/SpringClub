
<header id="header">
    <div class="navbar navbar-fixed-top navbar-inverse">
        <div class="navbar-inner">
            <div class="container">

                <a class="brand">Club App</a>


                <ul class="nav pull-right">

                    <li class="rol">
                        <p>Administrador : </p>
                    </li>
                    
                    <li>
                        <a data-toggle="dropdown" href="#">
                            <span>
                                <img class="menu-avatar" src="<%=request.getContextPath()%>/public/app/img/02.jpg">
                                <span>
                                    John Smith
                                    <i class="icon-caret-down"></i>
                                </span>

                            </span>
                        </a>
                        <ul class="dropdown-menu">
                            <li  class="with-image">
                                <div class="avatar">
                                    <img class="img-rounded" src="<%=request.getContextPath()%>/public/app/img/02.jpg">
                                </div>
                                <span>John Smith</span>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <i class="icon-user"></i>
                                    <span>Profile</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-off"></i>
                                    <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>

        </div>
    </div>

</header>