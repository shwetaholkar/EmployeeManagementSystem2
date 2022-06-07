<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="EmployeeManagementSystem.Pages.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
    </script>
    <script src="../js/fontawesome-all.min.js"></script>
    <title>Home Page</title>
</head>
<%--<body style="background-image: url('../Image/img1.jpg');">--%>
    <body>
        <div class="container-fluid">

            <nav class="navbar navbar-light bg-dark navbar-expand-sm ">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <img src="../Image/WaiLogo.jpg" style="height: 100px" class="me-2 rounded-circle img-fluid" />
                        <a href="#" class="navbar-brand text-light " style="font-size: xx-large">Wai-Technology</a>
                    </div>
                    <div>
                        <a href="Login.aspx">
                            <button type="button" class="btn btn-primary me-5 ">Login</button>
                        </a>
                    </div>
                </div>
            </nav>
           
           

        </div>
    
</body>
</html>
