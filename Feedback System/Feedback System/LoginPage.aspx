<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Feedback_System.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <!-- Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet">
    <title>login</title>
    <link rel="icon" type="image/png" href="assets/img/imageshhh.png">



    <style>
        .bg-light {
            background-color: #5fcf80;
        }

        .btn-dark {
            background-color: #5fcf80;
            border-color: #5fcf80;
        }

        .sitename {
            color: #5fcf80;
            font-family: 'Times New Roman', Times, serif;
        }

        .welcom {
            font-family: 'Times New Roman';
            font-size: 20px;
            color: #2125299e;
            margin-left: 80px;
        }

        .form-label1 {
            font-family: 'Times New Roman';
            color: #2125299e;
        }

        .form-label2 {
            font-family: 'Times New Roman';
            color: #2125299e;
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
                            <li><a href="HomePage.aspx" class="active">Home<br>
                            </a></li>
                            <li><a href="AboutUs.aspx">About us</a></li>

                            <li><a href="ContactUs.aspx">Contact us</a></li>
                        </ul>
                        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
                    </nav>


                    <asp:Button ID="Button1" runat="server" Text="login" class="btn-getstarted" PostBackUrl="~/LoginPage.aspx" OnClick="Button1_Click" />
                </div>
            </header>
        </div>
        <main class="main">


            <!-- Login 8 - Bootstrap Brain Component -->
            <section class="bg-light p-3 p-md-4 p-xl-5">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-12 col-xxl-11">
                            <div class="card border-light-subtle shadow-sm">
                                <div class="row g-0">
                                    <div class="col-12 col-md-6">
                                        <img class="img-fluid rounded-start w-100 h-100 object-fit-cover" loading="lazy" src="./assets/img/istockphoto-1435605193-2048x2048 - Copy.jpg" alt="Welcome back you've been missed!">
                                    </div>
                                    <div class="col-12 col-md-6 d-flex align-items-center justify-content-center">
                                        <div class="col-12 col-lg-11 col-xl-10">
                                            <div class="card-body p-3 p-md-4 p-xl-5">
                                                <div class="row">
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="d-flex gap-3 flex-column">
                                                        </div>
                                                        <p class="welcom">welcome to Feedback Master</p>
                                                    </div>
                                                </div>
                                                <form action="#!">
                                                    <div class="row gy-3 overflow-hidden">
                                                        <div class="col-12">
                                                            <div class="form-floating mb-3">

                                                                <asp:Label ID="Label1" runat="server" Text="ID :" class="form-label1"></asp:Label>
                                                                <asp:TextBox ID="ID" runat="server"  CssClass="form-control" ></asp:TextBox>
                                                                
                                                            </div>

                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-floating mb-3">


                                                                <asp:Label ID="Label2" runat="server" Text="Email :" class="form-label2"></asp:Label>
                                                                <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>


                                                            </div>
                                                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="col-12">
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="d-grid">

                                                                <asp:Button ID="Login" runat="server" Text="Login" class="btn btn-dark btn-lg" OnClick="ButtonLogin_Click" />
                                                                <br />
                                                                <br />
                                                                <br />
                                                                <br />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                                <div class="row">
                                                    <div class="col-12">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </main>

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

                            <a href=""><i class="bi bi-facebook"></i></a>
                            <a href=""><i class="bi bi-instagram"></i></a>
                            <a href=""><i class="bi bi-linkedin"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-3 footer-links">
                        <h4>Useful Links</h4>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">contact us</a></li>
                        </ul>
                    </div>



                    <div class="col-lg-2 col-md-3 footer-links">
                        <h4>Adress</h4>
                        <p>Jordan-Irbid</p>
                        <p>Sheikh Khalil Street</p>

                        <p class="mt-3"><strong>Phone:</strong> <span>+692 778811222</span></p>
                        <p><strong>Email:</strong> <span>FeedbackMasret@gmail.com</span></p>

                    </div>
                    <div class="col-lg-4 col-md-12 footer-newsletter">

                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d53808.193111134904!2d35.888609366791044!3d32.55252313181415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151c76916dac0453%3A0x5416e113d81f7d82!2z2KXYsdio2K8!5e0!3m2!1sar!2sjo!4v1720299302224!5m2!1sar!2sjo" width="400" height="250" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
    </form>






    <div class="container copyright text-center mt-4">
        <p>© <span>Copyright</span> <strong class="px-1 sitename">FeedBack Master</strong> <span>All Rights Reserved</span></p>
        <div class="credits">

            <!-- Licensing information: https://bootstrapmade.com/license/ -->


        </div>
    </div>

    </footer>

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

    </div>
    </form>
</body>
</html>

