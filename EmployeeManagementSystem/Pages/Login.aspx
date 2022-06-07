<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeeManagementSystem.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
    </script>
    <script src="../js/fontawesome-all.min.js"></script>

    <title>Login Page</title>
   
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
        
        <div>
            <table class="form">
                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelUserName" class="form-label">UserName</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxUserName" placeholder="Enter Username" Class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelPassword" class="form-label">Password</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxPassword" placeholder="Enter Password" Class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                       
                      <a href="Menu.aspx">
                           <asp:Button runat="server" ID="ButtonSubmit" Text="Submit" class="btn btn-primary" OnClick="ButtonSubmit_OnClick" />
                            <%--<button type="button" class="btn btn-primary me-5 ">Login</button>--%>
                        </a>



                    </td>
                </tr>
            </table>
        </div>
    </form>

    </div>
</body>
</html>
