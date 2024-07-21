<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Feedback_System.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon" />

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
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


    <!-- Template Javascript -->
    <script src="stylingDashboard/js/main.js"></script>
    <style>
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

        .btn-success {
            color: #fff;
            background-color: #5FCF80;
            border-color: #1db971;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-xxl position-relative bg-white d-flex p-0">
            <!-- Sidebar Start -->
            <div class="sidebar pe-4 pb-3">
                <nav class="navbar bg-light navbar-light">
                    <a href="index.html" class="navbar-brand mx-4 mb-3">
                        <h3 class="text-primary">
                            <i class="fa fa-hashtag me-2"></i>Feedback Master
                        </h3>
                    </a>
                    <div class="d-flex align-items-center ms-4 mb-4">
                        <div class="position-relative">
                            <img
                                class="rounded-circle"
                                src="stylingDashboard/img/testimonial-1.jpg"
                                alt=""
                                style="width: 40px; height: 40px" />
                            <div
                                class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1">
                            </div>
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

            <div class="content">
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

                <!-- Chart and Table Content Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="row g-4">
                        <!-- Bar Chart -->
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-light text-center rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">Feedback Bar Chart</h6>
                                </div>
                                <canvas id="feedbackChart"></canvas>
                            </div>
                        </div>
                        <!-- Line Chart -->
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-light text-center rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">Feedback Line Chart</h6>
                                </div>
                                <canvas id="lineChart"></canvas>
                            </div>
                        </div>
                        <!-- Doughnut Chart -->
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-light text-center rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">Feedback Doughnut Chart</h6>
                                </div>
                                <canvas id="doughnutChart"></canvas>
                            </div>
                        </div>
                        <!-- Feedback Table -->
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-light text-center rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">Student Feedback Table</h6>
                                </div>
                                <div class="table-responsive">
                                    <table class="table text-start align-middle table-bordered table-hover mb-0">
                                        <thead>
                                            <tr class="text-dark">
                                                <th scope="col">#</th>
                                                <th scope="col">Student Name</th>
                                                <th scope="col">Course</th>
                                                <th scope="col">Feedback</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>John Doe</td>
                                                <td>C#</td>
                                                <td>Excellent</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">2</td>
                                    <td>Jane Smith</td>
                                                    <td>JavaScript</td>
                                                    <td>Very Good</td>
                                            </tr>
                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Chart and Table Content End -->

                <!-- Chart.js Script -->
                <script>
                    // Bar Chart
                    var ctxBar = document.getElementById('feedbackChart').getContext('2d');
                    var feedbackChart = new Chart(ctxBar, {
                        type: 'bar',
                        data: {
                            labels: ['C#', 'JavaScript', 'Python', 'C++'],
                            datasets: [{
                                label: '# of Feedback',
                                data: [12, 19, 3, 5],
                                backgroundColor: [
                                    'rgba(255, 99, 132, 0.2)',
                                    'rgba(54, 162, 235, 0.2)',
                                    'rgba(255, 206, 86, 0.2)',
                                    'rgba(75, 192, 192, 0.2)'
                                ],
                                borderColor: [
                                    'rgba(255, 99, 132, 1)',
                                    'rgba(54, 162, 235, 1)',
                                    'rgba(255, 206, 86, 1)',
                                    'rgba(75, 192, 192, 1)'
                                ],
                                borderWidth: 1
                            }]
                        },
                        options: {
                            scales: {
                                y: {
                                    beginAtZero: true
                                }
                            }
                        }
                    });

                    // Line Chart
                    var ctxLine = document.getElementById('lineChart').getContext('2d');
                    var lineChart = new Chart(ctxLine, {
                        type: 'line',
                        data: {
                            labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                            datasets: [{
                                label: 'Feedback Over Time',
                                data: [3, 2, 3, 6, 4, 7, 5],
                                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                borderColor: 'rgba(75, 192, 192, 1)',
                                borderWidth: 1,
                                fill: true,
                                tension: 0.4
                            }]
                        },
                        options: {
                            scales: {
                                y: {
                                    beginAtZero: true
                                }
                            }
                        }
                    });

                    // Doughnut Chart
                    var ctxDoughnut = document.getElementById('doughnutChart').getContext('2d');
                    var doughnutChart = new Chart(ctxDoughnut, {
                        type: 'doughnut',
                        data: {
                            labels: ['C#', 'JavaScript', 'Python', 'C++'],
                            datasets: [{
                                label: 'Feedback Distribution',
                                data: [12, 19, 3, 5],
                                backgroundColor: [
                                    'rgba(255, 99, 132, 0.2)',
                                    'rgba(54, 162, 235, 0.2)',
                                    'rgba(255, 206, 86, 0.2)',
                                    'rgba(75, 192, 192, 0.2)'
                                ],
                                borderColor: [
                                    'rgba(255, 99, 132, 1)',
                                    'rgba(54, 162, 235, 1)',
                                    'rgba(255, 206, 86, 1)',
                                    'rgba(75, 192, 192, 1)'
                                ],
                                borderWidth: 1
                            }]
                        },
                        options: {
                            responsive: true,
                            plugins: {
                                legend: {
                                    position: 'top',
                                },
                                tooltip: {
                                    callbacks: {
                                        label: function (context) {
                                            var label = context.label || '';
                                            if (label) {
                                                label += ': ';
                                            }
                                            if (context.parsed !== null) {
                                                label += context.parsed;
                                            }
                                            return label;
                                        }
                                    }
                                }
                            }
                        }
                    });
                </script>
            </div>
    </form>
</body>
</html>
