<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentFeedback.aspx.cs" Inherits="Feedback_System.StudentFeedback" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <!-- Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet">

    <link rel="icon" type="image/png" href="assets/img/imageshhh.png">

    <title></title>
    <style>
        @import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";
        @import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin: 50px auto;
            padding: 20px;
            width: 80%;
        }



        .Hidden {
            display: none;
        }

        .card-wide {
            width: 100%;
        }

        .cardaaa {
            text-align: center;
            margin-bottom: 20px;
        }

        .card-title {
            font-size: 24px;
            font-weight: 500;
            color: #5fcf80;
        }

        .formm {
            margin-bottom: 20px;
            text-align: center;
        }

        .form-control {
            width: 50%;
            padding: 10px;
            margin: 0 auto;
            font-size: 16px;
        }

        .btn-custom {
            background-color: #5fcf80;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
        }

            .btn-custom:hover {
                background-color: #45a566;
                transform: translateY(-2px);
            }

        .text-end {
            text-align: right;
        }

        .sitename {
            color: #5fcf80;
            font-family: 'Times New Roman', Times, serif;
        }

        a {
            text-decoration: none;
        }

            a:hover {
                text-decoration: underline;
            }

        .form-check-input {
            margin-top: 0.3rem;
            margin-right: 0.5rem;
        }

        .btn {
            margin-right: 10px;
        }

        .fw-bold {
            font-size: 20px;
        }

        .form-check {
            margin-left: 20px;
            margin-top: 30px;
            height: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header id="header" class="header d-flex align-items-center sticky-top">
                <div class="container-fluid container-xl position-relative d-flex align-items-center">
                    <a href="index.html" class="logo d-flex align-items-center me-auto">
                        <h1 class="sitename">Feedback Master</h1>
                    </a>

                    <nav id="navmenu" class="navmenu">
                        <ul>
                            <li><a href="Home-Page.aspx" class="active">Home<br>
                            </a></li>
                            <li><a href="About us-page.aspx">About us</a></li>
                            <li><a href="contact.html">Contact us</a></li>
                        </ul>
                        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
                    </nav>

                    <asp:Button ID="Button1" runat="server" Text="Logout" class="btn-getstarted" PostBackUrl="~/LoginPage.aspx" />
                </div>
            </header>
            <div class="card card-wide mx-auto my-5 shadow-sm p-4 bg-white rounded">
                <div class="card-body">
                    <h5 class="card-title text-center text-success">Welcome to your feedback page!</h5>
                    <p class="text-center">We are pleased to offer you this opportunity to evaluate the courses you have taken at Academia. Your feedback plays a crucial role in improving educational quality and developing a better learning environment for everyone.</p>






                    <div class="form-group text-center">
                        <asp:DropDownList ID="validationCustom04" runat="server" CssClass="form-control w-50 mx-auto" OnSelectedIndexChanged="validationCustom04_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Width="148px" BackColor="#5FCF80" CssClass="btn btn-primary my-3" Text="Start Evaluation" />
                    </div>




                </div>
            </div>


            <div class="card mx-auto my-5 shadow-sm p-4 bg-white rounded">
                <div class="container mb-5">
                    <div class="row">
                        <div class="col-12">
                            <asp:Label ID="lblQuestion" runat="server" CssClass="fw-bold">How would you rate the clarity and effectiveness of the course content?</asp:Label>
                            <div class="form-check">
                                <asp:RadioButtonList ID="OptionsList" runat="server" OnSelectedIndexChanged="OptionsList_SelectedIndexChanged" class="form-check" Height="250px" Width="600px">
                                    <asp:ListItem Text="Excellent" Value="4" CssClass="form-check-input"></asp:ListItem>
                                    <asp:ListItem Text="Very Good" Value="3" CssClass="form-check-input"></asp:ListItem>
                                    <asp:ListItem Text="Good" Value="2" CssClass="form-check-input"></asp:ListItem>
                                    <asp:ListItem Text="Poor" Value="1" CssClass="form-check-input"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="text-end">
                                <asp:Button ID="submit" runat="server" Text="Submit" OnClick="Submit_Click" CssClass="btn btn-success" />
                                <asp:Button ID="Button2" runat="server" Text="Next" OnClick="Button2_Click" CssClass="btn btn-secondary" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <footer id="footer" class="footer position-relative light-background">
                <div class="container footer-top">
                    <div class="row gy-4">
                        <div class="col-lg-4 col-md-6 footer-about">
                            <h1 class="sitename">Feedback Master</h1>
                            <div class="footer-contact pt-3">
                                <p style="font-size: 20px;">
                                    A system designed to improve your
                                    <br />
                                    experience through your feedback.
                                </p>
                                <br />
                                <br />
                                <br />
                            </div>
                            <div class="social-links d-flex mt-4">
                                <a href="#"><i class="bi bi-facebook"></i></a>
                                <a href="#"><i class="bi bi-instagram"></i></a>
                                <a href="#"><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-3 footer-links">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Contact us</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-2 col-md-3 footer-links">
                            <h4>Address</h4>
                            <p>Jordan-Irbid</p>
                            <p>Sheikh Khalil Street</p>
                            <p class="mt-3"><strong>Phone:</strong> <span>+692 778811222</span></p>
                            <p><strong>Email:</strong> <span>FeedbackMaster@gmail.com</span></p>
                        </div>

                        <div class="col-lg-4 col-md-12 footer-newsletter">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d53808.193111134904!2d35.888609366791044!3d32.55252313181415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151c76916dac0453%3A0x5416e113d81f7d82!2z2KXYsdio2K8!5e0!3m2!1sar!2sjo!4v1720299302224!5m2!1sar!2sjo" width="400" height="250" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div>
            </footer>

        </div>
    </form>

    <!-- Scroll Top -->
    <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Preloader -->
    <div id="preloader"></div>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
</body>
</html>
