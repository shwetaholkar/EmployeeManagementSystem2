<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="EmployeeManagementSystem.Pages.Dashboard" %>

<%@ Import Namespace="EmployeeManagementSystem.Service" %>
<%@ Import Namespace="EmployeeManagementSystem.Service.Services" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
    </script>
    <script src="../js/fontawesome-all.min.js"></script>
    <title>Dashboard</title>
</head>
<body>
    <div class="container">
        <% var employeeService = new EmployeeServices();
            var employees = employeeService.GetAll();
        %>
        <div class="row">
            <%
                foreach (var employee in employees)
                {
            %>

                <div class="col-md-3">


                <div class="card ms-4 mt-5" style="width: 18rem;">
                    <img class="card-img-top" src="../Image/EmpImage.png" alt="Card image cap">

                    <div class="card-body text-center">
                        <h5 class="card-title"><%=employee.EmployeeName %></h5>
                        <h6 class="card-text"><%=employee.DepartmentId %></h6>
                        <h6 class="card-text"><%=employee.Position %></h6>
                        <h6 class="card-text"><%=employee.Email %></h6>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
