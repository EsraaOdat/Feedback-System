<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowStudentDetails.aspx.cs" Inherits="Feedback_System.ShowStudentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Details</title>
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
        body.dark-mode {
            background-color: #121212;
            color: #ffffff;
        }

        .card {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            max-width: 500px;
            margin: auto;
        }

        body.dark-mode .card {
            background-color: #1e1e1e;
        }

        .form-group {
            margin-bottom: 20px;
        }

            .form-group label {
                font-weight: bold;
            }

        .question-answer {
            margin-top: 20px;
        }

            .question-answer p {
                margin-bottom: 10px;
                font-size: 1.2em;
            }

        .answer {
            display: none;
            padding: 10px;
            border-radius: 5px;
            background-color: #f8f9fa;
            margin-bottom: 10px;
        }

            .answer.show {
                display: block;
                animation: fadeIn 0.5s ease-in-out;
            }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .toggle-dark-mode {
            cursor: pointer;
            margin-bottom: 20px;
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
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <%-- <div class="container mt-5">
    <div class="card">
        <h2 class="text-center">Show Details</h2>
        <div class="form-group toggle-dark-mode text-center" onclick="toggleDarkMode()">
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
            <div class="form-group">
                <label for="studentName">Student Name:</label>
                <asp:Label ID="lblStudent_Name" runat="server" CssClass="form-control" />
                <asp:Label ID="lblStudentName" runat="server" CssClass="form-control" Style="display: none" />
            </div>
            <div class="form-group">
                <label for="courseName">Course Name *</label>
                <asp:DropDownList ID="courseDropDownList" runat="server" CssClass="form-controll" AutoPostBack="True" OnSelectedIndexChanged="courseDropDownList_SelectedIndexChanged" required="required"></asp:DropDownList>
            </div>
            <asp:Panel ID="questionsPanel" runat="server" CssClass="question-answer">
                <!-- Questions and answers will be loaded here -->
            </asp:Panel>
        </div>
    </form>
    <%--   </div>
</div>--%>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script>
        function toggleDarkMode() {
            document.body.classList.toggle('dark-mode');
        }
    </script>
</body>

</html>
