<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GameDetail.aspx.cs" Inherits="WebApplication2.Views.GameDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Game Detail</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <%--Esto es para repetir la lista de juegos--%>
                    <asp:Repeater ID="RepGame" runat="server">

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

        </div>
    </form>
</body>
</html>
