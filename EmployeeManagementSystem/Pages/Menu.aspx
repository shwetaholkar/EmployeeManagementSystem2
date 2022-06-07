<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="EmployeeManagementSystem.Pages.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
    </script>
    <script src="../js/fontawesome-all.min.js"></script>
    <title>Menu page</title>
</head>
<body>
    <div class="container-fluid">

        <nav class="navbar navbar-light bg-dark navbar-expand-sm ">
            <div class="container-fluid">
                <div class="navbar-header">
                    <img src="../Image/WaiLogo.jpg" style="height: 100px" class="me-2 rounded-circle img-fluid" />
                    <a href="#" class="navbar-brand text-light " style="font-size: xx-large">Wai-Technology</a>
                </div>

                <button type="button" class="navbar-toggler text-light" data-bs-toggle="collapse"
                    data-bs-target="#navbarResponsiveSmall">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarResponsiveSmall">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="Dashboard.aspx" class="nav-link active text-light" aria-current="page">Dashboard</a>
                        </li>

                        <%-- <a href="#" class="nav-link text-light">Employee</a>--%>

                        <li class="nav-item dropdown">
                            <div class="dropdown show">
                                <a class="nav-link text-light dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Employee
                                </a>

                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a class="dropdown-item" href="#">Add Employee</a>
                                    <a class="dropdown-item" href="#">Update Employee</a>
                                    <a class="dropdown-item" href="#">Delete Employee</a>
                                    <a class="dropdown-item" href="#">All Employees</a>
                                </div>
                            </div>
                        </li>


                        <li class="nav-item">
                            <a href="#" class="nav-link text-light">Job</a>
                        </li>
                    </ul>
                </div>

                <div>
                    <a href="Homepage.aspx">
                        <button type="button" class="btn btn-primary me-5 ">Logout</button>
                    </a>
                </div>
            </div>
        </nav>


    </div>

</body>
</html>
