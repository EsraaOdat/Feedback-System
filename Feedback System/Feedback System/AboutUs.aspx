<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Feedback_System.AboutUs" %>

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
    <title>About us</title>
    <link rel="icon" type="image/png" href="assets/img/imageshhh.png">
    <style>
        .section#about-us {
            background-color: #f0fff2e8;
        }

        .sitename {
            color: #5fcf80;
            font-family: 'Times New Roman', Times, serif;
        }

        .img-fluid {
            max-width: 100%;
            height: 250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <body class="about-page">

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


                        <asp:Button ID="Button1" runat="server" Text="login" class="btn-getstarted" PostBackUrl="~/Loginpage.aspx" />
                    </div>
                </header>

                <main class="main">



                    <!-- About Us Section -->
                    <section id="about-us" class="section about-us">

                        <div class="container">

                            <div class="row gy-4">

                                <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-up" data-aos-delay="100">
                                    <img src="assets/img/about-2.jpg" class="img-fluid" alt="">
                                </div>

                                <div class="col-lg-6 order-2 order-lg-1 content" data-aos="fade-up" data-aos-delay="200">
                                    <h3>Feedback Master System</h3>
                                    <p class="fst-italic">
                                        In the world of education and training, the Feedback Master System is a vital tool for improving performance and guiding students towards excellence, which contributes to enhancing the educational process and developing skills effectively and continuously.
                                    </p>
                                    <ul>
                                        <li><i class="bi bi-check-circle"></i><span>We provide real-time assessments of student performance, which helps with continuous improvement.</span></li>
                                        <br />
                                        <li><i class="bi bi-check-circle"></i><span>Our system features an intuitive and easy-to-use user interface for both students and administrators.</span></li>
                                        <br />
                                        <li><i class="bi bi-check-circle"></i><span>Administrators can easily manage and add courses, questions, and students.</span></li>
                                        <br />
                                        <li><i class="bi bi-check-circle"></i><span>Allows you to add and customize questions for each training course.</span></li>
                                        <br />

                                    </ul>
                                </div>

                            </div>

                        </div>

                    </section>
                    <!-- /About Us Section -->
                    <br />
                    <!-- Section Title -->
                    <div class="container section-title" data-aos="fade-up">
                        <h2>Team</h2>
                        <p>Team Member</p>
                    </div>
                    <!-- End Section Title -->

                    <!-- Trainers Section -->
                    <section id="trainers" class="section trainers">

                        <div class="container">

                            <div class="row gy-5">

                                <div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="100">
                                    <div class="member-img">
                                        <img src="assets/img/ahmedphoto.jpg" class="img-fluid" alt="">
                                        <div class="social">

                                            <a href="#"><i class="bi bi-facebook"></i></a>
                                            <a href="#"><i class="bi bi-instagram"></i></a>
                                            <a href="#"><i class="bi bi-linkedin"></i></a>
                                        </div>
                                    </div>
                                    <div class="member-info text-center">
                                        <h4>Ahmed Yacoub</h4>
                                        <span>Scrum Master</span>
                                        <p>Lead the team, remove obstacles, facilitate meetings, improve performance, enhance collaboration.</p>
                                    </div>
                                </div>
                                <!-- End Team Member -->

                                <div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="200">
                                    <div class="member-img">
                                        <img src="assets/img/raneem.jpg" class="img-fluid" alt="">
                                        <div class="social">

                                            <a href="#"><i class="bi bi-facebook"></i></a>
                                            <a href="#"><i class="bi bi-instagram"></i></a>
                                            <a href="#"><i class="bi bi-linkedin"></i></a>
                                        </div>
                                    </div>
                                    <div class="member-info text-center">
                                        <h4>Raneem Alhalahlah</h4>
                                        <span>Product Owner</span>
                                        <p>Manages priorities, interacts with customers, ensures value and strategy are achieved.</p>
                                    </div>
                                </div>
                                <!-- End Team Member -->

                                <div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="300">
                                    <div class="member-img">
                                        <img src="assets/img/qusai.jpg" class="img-fluid" alt="">
                                        <div class="social">

                                            <a href="#"><i class="bi bi-facebook"></i></a>
                                            <a href="#"><i class="bi bi-instagram"></i></a>
                                            <a href="#"><i class="bi bi-linkedin"></i></a>
                                        </div>
                                    </div>
                                    <div class="member-info text-center">
                                        <h4>Qusay Al-Singlawi</h4>
                                        <span>Full Stack Web Developer</span>
                                        <p>Develops full scale web applications, works on front and back end, interacting with databases and clients.</p>
                                    </div>
                                </div>
                                <!-- End Team Member -->

                                <div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="400">
                                    <div class="member-img">
                                        <img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
                                        <div class="social">

                                            <a href="#"><i class="bi bi-facebook"></i></a>
                                            <a href="#"><i class="bi bi-instagram"></i></a>
                                            <a href="#"><i class="bi bi-linkedin"></i></a>
                                        </div>
                                    </div>
                                    <div class="member-info text-center">
                                        <h4>Israa Al-Oudat</h4>
                                        <span>Full Stack Web Developer</span>
                                        <p>Develops full scale web applications, works on front and back end, interacting with databases and clients.</p>
                                    </div>
                                </div>
                                <!-- End Team Member -->

                                <div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="500">
                                    <div class="member-img">
                                        <img src="assets/img/mohammad.jpg" class="img-fluid" alt="">
                                        <div class="social">

                                            <a href="#"><i class="bi bi-facebook"></i></a>
                                            <a href="#"><i class="bi bi-instagram"></i></a>
                                            <a href="#"><i class="bi bi-linkedin"></i></a>
                                        </div>
                                    </div>
                                    <div class="member-info text-center">
                                        <h4>Muhammad Al-Gharaibeh</h4>
                                        <span>Full Stack Web Developer<br>
                                        </span>
                                        <p>Develops full scale web applications, works on front and back end, interacting with databases and clients.</p>
                                    </div>
                                </div>
                                <!-- End Team Member -->



                            </div>

                        </div>

                    </section>
                    <!-- /Trainers Section -->














                </main>

                <footer id="footer" class="footer position-relative light-background">

                    <div class="container footer-top">
                        <div class="row gy-4">
                            <div class="col-lg-4 col-md-6 footer-about">


                                <h1 class="sitename">Feedback Master</h1>

                                <div class="footer-contact pt-3">
                                    <p style="font-size: 20px;">A system designed to improve your
                                        <br />
                                        experience through your feedback.</p>
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

</body>



</div>
    </form>
</body>
</html>
