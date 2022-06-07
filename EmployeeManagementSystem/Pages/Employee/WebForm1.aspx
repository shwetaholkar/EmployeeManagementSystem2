<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EmployeeManagementSystem.Pages.Employee.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
        href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
        integrity="sha384- 
 B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
        crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <script src="js/fontawesome-all.min.js"></script>

    <style>
        .margin-right {
            margin-right: 22%;
        }

        .navbar-margin {
            margin-top: 6%;
        }

        .Margin-left {
            margin-left: 8%;
        }

        .nav-color {
            background: #cadea6;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <section style="background-color: #e6f3ff;">

            <section>
                <nav class="navbar navbar-expand-lg navbar-light nav-color">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"><span>
                            <svg xmlns="http://www.w3.org/2000/svg" class="me-2 fa-spin" height="50" width="50" viewBox="0 0 640 512">
                                <!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                <path d="M128 96h384v256h64V80C576 53.63 554.4 32 528 32h-416C85.63 32 64 53.63 64 80V352h64V96zM624 384h-608C7.25 384 0 391.3 0 400V416c0 35.25 28.75 64 64 64h512c35.25 0 64-28.75 64-64v-16C640 391.3 632.8 384 624 384zM365.9 286.2C369.8 290.1 374.9 292 380 292s10.23-1.938 14.14-5.844l48-48c7.812-7.813 7.812-20.5 0-28.31l-48-48c-7.812-7.813-20.47-7.813-28.28 0c-7.812 7.813-7.812 20.5 0 28.31l33.86 33.84l-33.86 33.84C358 265.7 358 278.4 365.9 286.2zM274.1 161.9c-7.812-7.813-20.47-7.813-28.28 0l-48 48c-7.812 7.813-7.812 20.5 0 28.31l48 48C249.8 290.1 254.9 292 260 292s10.23-1.938 14.14-5.844c7.812-7.813 7.812-20.5 0-28.31L240.3 224l33.86-33.84C281.1 182.4 281.1 169.7 274.1 161.9z" />
                            </svg></span>Wai Technology</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#">Home</a>
                                </li>
                                <%--<li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>--%>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Employee
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item text-info" href="/Pages/Employees/Default.aspx">Show All</a></li>
                                        <li>
                                            <hr class="dropdown-divider" />
                                        </li>
                                        <li><a class="dropdown-item text-info" href="/Pages/Employees/Create.aspx">Add</a></li>

                                    </ul>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-bs-toggle="dropdown" aria-expanded="false">Jobs Details
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
                                        <li><a class="dropdown-item text-info" href="/Pages/Jobs/Default.aspx">Show All</a></li>
                                        <li>
                                            <hr class="dropdown-divider" />
                                        </li>
                                        <li><a class="dropdown-item text-info" href="/Pages/Jobs/Create.aspx">Add</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </nav>
            </section>


            <section>
                <div class="container bg-white">
                    <div class="row mt-5 border-secondary shadow p-3">
                        <div class="col-md-6">
                            <div class="justify-content-center">
                                <h5 class="text-muted">WAi Technologies is a Product Development Services company with deep expertise and extensive experience in delivering solutions built over Microsoft ASP.NET Core, using industry leading development accelerator frameworks – ASP.NET Zero and ABP.io.
                        We provide Rapid Application Development to Enterprise Tech and SaaS companies to address business problems, using optimal solutions, delivered through a choice of engagement models that include – Joint Application Development, Fully Outsourced Product Engineering and End to End User Experience Design and Frontend Engineering.
                                </h5>
                            </div>
                        </div>
                        <div class="col-md-6" style="background-color: #F7F8EC;">
                            <img class="img-fluid" src="../../wai.png" />
                        </div>
                    </div>
                </div>
            </section>

            <div class="container">
                <section class="mt-3">
                    <h1 class="text-decoration-underline text-center m-4">Our Services</h1>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card h-100 mb-4 shadow">
                                <div class="card-body">
                                    <div class="text-center">
                                        <img src="../../../imgs/card1.svg" />
                                    </div>
                                    <h2 class="text-center mb-4">Framework Expertise</h2>
                                    <p class="lead text-sm-center">Having delivered 100+ projects successfully; we are the preferred development partners for these frameworks with unmatched experience and expertise</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card h-100 mb-4 shadow">
                                <div class="card-body">
                                    <div class="text-center">
                                        <img src="../../../imgs/card2.svg" />
                                    </div>
                                    <h2 class="text-center mb-4">Modern DevOps Team Services</h2>
                                    <p class="lead text-sm-center">Choose a customized team from our pool of experienced and skilled resources that have technology specific expertise, project management skills and quality assurance skill sets among others.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card h-100 mb-4 shadow">
                                <div class="card-body">
                                    <div class="text-center">
                                        <img src="../../../imgs/card3.svg" />
                                    </div>
                                    <h2 class="text-center mb-4">Application Development</h2>
                                    <p class="lead text-sm-center">We use the Big Picture First method where you can experience your solutions coming to life during the development phase.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-4 mb-4">
                        <div class="col-md-2"></div>
                        <div class="col-md-4">
                            <div class="card h-100 mb-4 shadow">
                                <div class="card-body">
                                    <div class="text-center">
                                        <img src="../../../imgs/card4.svg" />
                                    </div>
                                    <h2 class="text-center mb-4">User Experience</h2>
                                    <p class="lead text-sm-center">Having delivered 100+ projects successfully; we are the preferred development partners for these frameworks with unmatched experience and expertise</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card h-100 mb-4 shadow">
                                <div class="card-body">
                                    <div class="text-center">
                                        <img src="../../../imgs/card5.svg" />
                                    </div>
                                    <h2 class="text-center mb-4">INSURE 24x7 Azure Managed services</h2>
                                    <p class="lead text-sm-center">Having delivered 100+ projects successfully; we are the preferred development partners for these frameworks with unmatched experience and expertise</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2"></div>

                    </div>

                </section>
            </div>

            <div class="container">
                <div class="footer mt-5 mb-4">
                    <div class="row mb-5">
                        <div class="col-md-4">
                            <img src="../../wai-footer.svg" />
                        </div>
                        <div class="col-md-5 text-center text-muted">
                            <h6>Application Modernization</h6>
                            <h6>User Experience</h6>
                            <h6>Azure Managed Services</h6>
                        </div>
                        <div class="col-md-3 text-center text-muted">
                            <h6>Partnership</h6>
                            <h6>Careers</h6>
                            <h6>Contact Us</h6>
                        </div>
                    </div>

                    <hr />
                    <div class="container">
                        <p class="text-muted">© 2022 WAi Technologies. All rights Reserved</p>
                    </div>
                </div>
            </div>
        </section>

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
