<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowStudents.aspx.cs" Inherits="Feedback_System.ShowStudents" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Show Student Info</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Favicon -->
    <link href="stylingDashboard/img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
        rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
        rel="stylesheet" />
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
        rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="stylingDashboard/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link
        href="stylingDashboard/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
        rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="stylingDashboard/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="stylingDashboard/css/style.css" rel="stylesheet" />
    <!-- Template Javascript -->
    <script src="stylingDashboard/js/main.js"></script>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="stylingDashboard/lib/chart/chart.min.js"></script>
    <script src="stylingDashboard/lib/easing/easing.min.js"></script>
    <script src="stylingDashboard/lib/waypoints/waypoints.min.js"></script>
    <script src="stylingDashboard/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="stylingDashboard/lib/tempusdominus/js/moment.min.js"></script>
    <script src="stylingDashboard/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="stylingDashboard/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <style>
        .table thead th {
            background-color: #007bff;
            color: white;
        }

        .table tbody tr:hover {
            background-color: #f1f1f1;
        }

        .input-group-text {
            background-color: #007bff;
            color: white;
        }

        .bg-primary {
            background-color: #59d274 !important;
        }

        .btn-info {
            color: #fff;
            background-color: #28A745;
        }

        .input-group-text {
            background-color: #59d274;
        }

        .btn-primary {
            color: #fff;
            background-color: #59d274;
            border-color: #59d274;
        }

            .btn-primary:hover {
                background-color: #59d274;
            }

        /*Dark mode*/
        body.dark-mode {
            background-color: #121212;
            color: #ffffff;
        }

        .table.dark-mode {
            background-color: #333;
            color: #fff;
        }

            .table.dark-mode thead th {
                background-color: #444;
            }

            .table.dark-mode tbody tr:hover {
                background-color: #555;
            }

        .input-group-text.dark-mode {
            background-color: #444;
            color: #fff;
        }

        .modal-content.dark-mode {
            background-color: #333;
            color: #fff;
        }

        .btn-info.dark-mode {
            background-color: #444;
            border-color: #444;
        }

        .btn-secondary.dark-mode {
            background-color: #444;
            border-color: #444;
        }

        .bg-light {
            background-color: #fff;
            z-index: 1;
        }

        h3.text-primary {
            color: #5FCF80 !important;
        }

        .sidebar .navbar .navbar-nav .nav-link:hover, .sidebar .navbar .navbar-nav .nav-link.active {
            color: #000;
            border-color: #5FCF80;
            margin: 10px;
            padding: 10px;
        }


        .sidebar .navbar .navbar-nav .nav-link {
            padding: 7px 20px;
            color: #5FCF80;
            font-weight: 500;
            border-radius: 0 30px 30px 0;
            outline: none;
        }

            .sidebar .navbar .navbar-nav .nav-link :hover {
                border-left: 3px solid #5FCF80;
            }

        .sidebar {
            width: 335px;
        }

        .form-controll {
            display: block;
            width: 100%;
            padding: .375rem .75rem;
            font-size: 1rem;
            line-height: 1.5;
            color: #000;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
        }

        .btn-success {
            color: #fff;
            background-color: #5FCF80;
            border-color: #1db971;
        }

        .div-container {
            width: 70%;
            position: absolute;
            right: 5rem;
        }
        /*Dark mode*/
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <%--<div class="container mt-5">
        <div class="d-flex justify-content-end">
            <button id="toggleDarkMode" class="btn btn-dark">Dark Mode</button>
        </div>--%>
    <form id="form1" runat="server">

        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <a href="index.html" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>Feedback Master</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="stylingDashboard/img/testimonial-1.jpg" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">Jhon Doe</h6>
                        <span>Admin</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <asp:LinkButton ID="LinkButton1" runat="server" class="nav-item nav-link active" OnClick="Addcourse_Click"><i class="fa-solid fa-book"></i>Add Course</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" class="nav-item nav-link active" OnClick="AddFeedback_Click"><i class="fa-solid fa-question"></i>Add Question</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" class="nav-item nav-link active" runat="server" OnClick="ShowCourse_Click"><i class="fa-regular fa-eye"></i>Show Courses</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton5" class="nav-item nav-link active" runat="server" OnClick="AddStudent_Click"><i class="fa-solid fa-plus"></i>Add Students</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton4" class="nav-item nav-link active" runat="server" OnClick="ShowStudent_Click"><i class="fa-regular fa-eye"></i>Show Students</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton6" class="nav-item nav-link active" runat="server" OnClick="ShowResult_Click"><i class="fa-solid fa-square-poll-vertical"></i>Show Results</asp:LinkButton>

                </div>
            </nav>

        </div>
        <!-- Sidebar End -->
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
            <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
            </a>

            <div class="navbar-nav align-items-center ms-auto">


                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                        <img class="rounded-circle me-lg-2" src="stylingDashboard/img/testimonial-1.jpg" alt="" style="width: 40px; height: 40px;" />
                        <span class="d-none d-lg-inline-flex">John Doe</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                        <asp:LinkButton ID="LinkButton7" class="dropdown-item" runat="server" OnClick="Logout_Click">Logout</asp:LinkButton>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Navbar End -->
        <div class="div-container">
            <h2 class="text-center">Student Information</h2>
            <div class="container mt-5">
                <div class="row my-3">
                    <div class="col-md-6">
                        <div class="input-group">
                            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search..." AutoPostBack="True" OnTextChanged="txtSearch_TextChanged" onkeyup="searchOnKeyPress()"></asp:TextBox>
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fas fa-search"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlSort" runat="server" CssClass="form-control">
                            <asp:ListItem Value="ID">ID</asp:ListItem>
                            <asp:ListItem Value="Name">Name</asp:ListItem>
                            <asp:ListItem Value="Email">Email</asp:ListItem>
                            <asp:ListItem Value="Courses">Courses</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnSort" runat="server" Text="Sort" CssClass="btn btn-primary btn-block" OnClick="btnSort_Click" />
                    </div>
                </div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover"
                    OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" HeaderStyle-CssClass="bg-primary text-white" ItemStyle-CssClass="text-center" />
                        <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-CssClass="bg-primary text-white" ItemStyle-CssClass="text-center" />
                        <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-CssClass="bg-primary text-white" ItemStyle-CssClass="text-center" />
                        <asp:BoundField DataField="Courses" HeaderText="Courses" HeaderStyle-CssClass="bg-primary text-white" ItemStyle-CssClass="text-center" />
                        <asp:TemplateField>
                            <HeaderStyle CssClass="bg-primary text-white" />
                            <ItemStyle CssClass="text-center" />
                            <ItemTemplate>
                                <asp:Button ID="btnViewDetails" runat="server" Text="View Details" CssClass="btn btn-info btn-sm" CommandName="ViewDetails"
                                    CommandArgument='<%# Eval("ID") + ";" + Eval("Name") + ";" + Eval("Email") + ";" + Eval("Courses") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script type="text/javascript">
        document.getElementById('toggleDarkMode').addEventListener('click', function () {
            document.body.classList.toggle('dark-mode');
            var elements = document.querySelectorAll('.table, .input-group-text, .modal-content, .btn-info, .btn-secondary');
            elements.forEach(function (element) {
                element.classList.toggle('dark-mode');
            });
        });

        function searchOnKeyPress() {
            var searchTerm = document.getElementById('<%= txtSearch.ClientID %>').value.toLowerCase();
            var grid = document.getElementById('<%= GridView1.ClientID %>');
            var rows = grid.getElementsByTagName('tr');

            for (var i = 1; i < rows.length; i++) {
                var cells = rows[i].getElementsByTagName('td');
                var match = false;
                for (var j = 0; j < cells.length; j++) {
                    if (cells[j].innerText.toLowerCase().includes(searchTerm)) {
                        match = true;
                        break;
                    }
                }
                rows[i].style.display = match ? '' : 'none';
            }
        }
    </script>
</body>
</html>
