<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmp.aspx.cs" Inherits="EmployeeManagementSystem.Pages.Employee.UpdateEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
    </script>
    <script src="../js/fontawesome-all.min.js"></script>
    <title>Update Employee</title>
    <style>
        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }

        .card-registration .select-arrow {
            top: 13px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <form id="form1" runat="server">

            <div class="status-message">
                <asp:Label runat="server" ID="LabelStatus" Visible="false" />

            </div>
            <section class="h-100 bg-dark">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col">
                            <div class="card card-registration my-4">
                                <div class="row g-0">
                                    <div class="col-xl-6 d-none d-xl-block">
                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                                            alt="Sample photo" class="img-fluid"
                                            style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="card-body p-md-5 text-black">
                                            <h3 class="mb-5 text-uppercase">Employee Registration Form</h3>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">


                                                        <asp:TextBox runat="server" ID="TextBoxEmpNo" class="form-control form-control-lg"></asp:TextBox>
                                                        <asp:Label ID="Label1" runat="server" Text="Label" class="form-label">Employee Unique Number </asp:Label>

                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">


                                                        <asp:TextBox runat="server" ID="TextBoxEmpName" class="form-control form-control-lg"></asp:TextBox>
                                                        <asp:Label ID="Label2" runat="server" Text="Label" class="form-label">Employee Name</asp:Label>


                                                    </div>
                                                </div>
                                            </div>


                                            <div class="form-outline mb-4">


                                                <asp:TextBox runat="server" ID="TextBoxAddress" class="form-control form-control-lg"></asp:TextBox>
                                                <asp:Label ID="Label3" runat="server" Text="Label" class="form-label">Address</asp:Label>


                                            </div>

                                            <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                                                <h6 class="mb-0 me-4">Gender: </h6>

                                                <asp:RadioButtonList ID="RadioButtonListGender" runat="server" class="ml-2" RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="Male">Male</asp:ListItem>
                                                    <asp:ListItem Value="Female">Female</asp:ListItem>
                                                    <asp:ListItem Value="Other">Other</asp:ListItem>
                                                </asp:RadioButtonList>

                                            </div>

                                            <div class="form-outline mb-4">

                                                <asp:TextBox runat="server" ID="TextBoxDOJ" class="form-control form-control-lg"></asp:TextBox>
                                                <asp:Label ID="Label7" runat="server" Text="Label" class="form-label">Date Of Joining</asp:Label>


                                            </div>

                                            <div class="form-outline mb-4">

                                                <asp:TextBox runat="server" ID="TextBoxPosition" class="form-control form-control-lg"></asp:TextBox>
                                                <asp:Label ID="Label8" runat="server" Text="Label" class="form-label">Position</asp:Label>



                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <asp:TextBox runat="server" ID="TextBoxAge" class="form-control form-control-lg"></asp:TextBox>
                                                        <asp:Label ID="Label10" runat="server" Text="Label" class="form-label">Age </asp:Label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <asp:TextBox runat="server" ID="TextBoxDeptId" class="form-control form-control-lg"></asp:TextBox>
                                                        <asp:Label ID="Label11" runat="server" Text="Label" class="form-label">Department Id</asp:Label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-outline mb-4">

                                                <asp:TextBox runat="server" ID="TextBoxEmail" class="form-control form-control-lg"></asp:TextBox>
                                                <asp:Label ID="Label9" runat="server" Text="Label" class="form-label">Email-Id</asp:Label>



                                            </div>

                                            <div class="d-flex justify-content-end pt-3">


                                                <asp:Button runat="server" ID="ButtonCreate" Text="Update" OnClick="ButtonUpdate_Click" class="btn btn-warning btn-lg ms-2" />

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
    </div>
</body>
</html>
