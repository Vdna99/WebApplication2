<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecordU.aspx.cs" Inherits="WebApplication2.Views.RecordU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="container d-flex justify-content-center align-items-center vh-100">
                    <div class="centrado">
                        <div class="form-group">
                             <h5>Registro</h5>
                            <div class="form-floating mb-3" style="top 20 px;">
                                <input runat="server" type="email" class="form-control" id="txtemail" placeholder="name@example.com" />
                                <label for="txtemail">Email address</label>
                            </div>
                            <div class="form-floating">
                                <input runat="server" type="password" class="form-control" id="txtPass" placeholder="Password" />
                                <label for="txtPass">Password</label>
                            </div>
                            <hr />
                            <div class="row">
                                <button runat="server" id="btnregister" onserverclick="btnregister_ServerClick" class="btn btn-primary" >SignUp</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
