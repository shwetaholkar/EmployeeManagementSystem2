<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowEmp.aspx.cs" Inherits="EmployeeManagementSystem.Pages.Employee.ShowEmp" %>

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
    <title>Show All Employee</title>
</head>
<body>
    <h1>View All Employees</h1>

    <br />
    <form id="form1" runat="server">
        <div class="container">
            <table>
                <tr>
                    <th>Employee Id</th>
                    <th>Employee Unique Number</th>
                    <th>Employee Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <th>Address</th>
                    <th>Position</th>
                    <th>Date Of Joining</th>
                    <th>DepartmentId</th>
                    <th colspan="2"></th>
                </tr>
                <%
                    var employeeService = new EmployeeServices();
                    var employees = employeeService.GetAll();

                    foreach (var employee in employees)
                    {
                        Response.Write("<tr>\n");
                        Response.Write($"<td>{employee.EmployeeId}</td>\n");
                        Response.Write($"<td>{employee.EmployeeUniqueNumber}</td>\n");
                        Response.Write($"<td>{employee.EmployeeName}</td>\n");
                        Response.Write($"<td>{employee.Email}</td>\n");
                        Response.Write($"<td>{employee.Gender}</td>\n");
                        Response.Write($"<td>{employee.Age}</td>\n");
                        Response.Write($"<td>{employee.Address}</td>\n");
                        Response.Write($"<td>{employee.Position}</td>\n");
                        Response.Write($"<td>{employee.DateOfJoining}</td>\n");
                        Response.Write($"<td>{employee.DepartmentId}</td>\n");

                        Response.Write($"<td><a href=\"UpdateEmp.aspx?id={employee.EmployeeId}\">Edit</a></td>\n");
                        Response.Write($"<td><a href=\"DeleteEmp.aspx?id={employee.EmployeeId}\">Delete</a></td>\n");
                        Response.Write("</tr>\n");
                    }
                %>
            </table>
        </div>
    </form>
</body>
</html>
