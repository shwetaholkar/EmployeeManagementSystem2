<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowEmp.aspx.cs" Inherits="EmployeeManagementSystem.Pages.Employee.ShowEmp" %>

<%@ Import Namespace="EmployeeManagementSystem.Service" %>
<%@ Import Namespace="EmployeeManagementSystem.Service.Utilities" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
    </script>
    <script src="../js/fontawesome-all.min.js"></script>
    <title>Show All Employee</title>
</head>
<body>
   <h1>View All Users</h1>
    <a href="Create.aspx">Add New User</a>
    <br />
    <br />

    <form id="form1" runat="server">
         <%--<h1>User List for department Id <%= Request.QueryString["Id"] %></h1>--%>

        <div>
            <table class="data-view">
                <tr>
                    <th>Id</th>
                    <th>FirstName</th>
                    <th>LastName</th>
                     <th>DateOfBirth</th>
                    <th>Pan</th>
                    <th>Address</th>
                     <th>Gender</th>
                    <th>MobileNumber</th>
                    <th>Email</th>
                     <th>Comments</th>
                    <th>DepartmentRefId</th>
                   
                    <th colspan="2"></th>
                </tr>
                 <%
                    var userService = new UserService();
                    var users = userService.GetAll();

                    foreach (var user in users)
                    {
                        Response.Write("<tr>\n");
                        Response.Write($"<td>{user.Id}</td>\n");
                        Response.Write($"<td>{user.FirstName}</td>\n");
                        Response.Write($"<td>{user.LastName}</td>\n");

                         Response.Write($"<td>{user.DateOfBirth}</td>\n");
                        Response.Write($"<td>{user.Pan}</td>\n");
                        Response.Write($"<td>{user.Address}</td>\n");
                         Response.Write($"<td>{user.Gender}</td>\n");
                        Response.Write($"<td>{user.MobileNumber}</td>\n");
                        Response.Write($"<td>{user.Email}</td>\n");
                         Response.Write($"<td>{user.Comments}</td>\n");
                        Response.Write($"<td>{user.DepartmentRefId}</td>\n");
                       

                        Response.Write($"<td><a href=\"Update.aspx?id={user.Id}\">Edit</a></td>\n");
                        Response.Write($"<td><a href=\"Delete.aspx?id={user.Id}\">Delete</a></td>\n");
                        Response.Write("</tr>\n");
                    }
                %>
            </table>
        </div>
    </form>
</body>
</html>
