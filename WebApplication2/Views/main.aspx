<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="WebApplication2.Views.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Video Games</title>
</head>
<body>
    <%-- Menú--%>
    <form id="form1" runat="server">
        <div>

            <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">GamesVN</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarColor01">
                        <ul class="navbar-nav me-auto">
                            <li class="nav-item">
                                <a class="nav-link active" href="RecordU.aspx">Register
                         <span class="visually-hidden">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" href="#">Login</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Separated link</a>
                                </div>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-sm-2" type="search" placeholder="Search">
                            <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>

            <%-- Repetidor--%>
            <div class="container">
                <div class="row">
                    <%--Esto es para repetir la lista de juegos  ctrl kd acomodar codigo --%>
                    <asp:Repeater ID="RepGames" runat="server">

                        <%--Este va ser el encabezado el template --%>
                        <HeaderTemplate></HeaderTemplate>
                        <%--Este va ser donde va estar el cuerpo del template--%>
                        <ItemTemplate>

                            <div class="card" style="width: 18rem; margin-left: 12px">
                                <img src="<%#Eval ("PhotoPath") %>" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval ("Name") %></h5>
                                    <p class="card-text"><%#Eval ("Description") %></p>
                                    <a href="GameDetail.aspx?id=<%#Eval ("Id") %>" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>


                        </ItemTemplate>
                        <%--Este va ser el pie de pagina del template --%>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>


            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
                <div class="offcanvas-header">
                    <h5 id="offcanvasRightLabel">Profile</h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <div class="card">
                        <div class="card-header">
                            Login
                        </div>
                        <div id="divLogin" runat="server" class="card-body">
                            <div class="form-group">
                                <div class="form-floating mb-3">
                                    <input runat="server" type="email" class="form-control" id="txtEmail" placeholder="name@example.com" />
                                    <label for="txtEmail">Email address</label>
                                </div>
                                <div class="form-floating">
                                    <input runat="server" type="password" class="form-control" id="txtPwd" placeholder="Password" />
                                    <label for="txtPwd">Password</label>
                                </div>
                                <hr />
                                <div class="row">
                                    <button runat="server" id="btnLogin" class="btn btn-primary" onserverclick="btnLogin_ServerClick">Login</button>
                                </div>
                            </div>
                        </div>
                        <div id="divLogout" runat="server" class="card-body" hidden="hidden">
                            <button runat="server" id="btnLogout" class="btn btn-primary" onserverclick="btnLogout_ServerClick">Logout</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
