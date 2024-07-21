<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Feedback_System.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/aos/aos.css" rel="stylesheet" />
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet" />

    <title>Home Page</title>
    <link rel="icon" type="image/png" href="assets/img/imageshhh.png" />
    <style>
        .hero:before {
            background: color-mix(in srgb, #000000, transparent 40%);
        }

        .hero .btn-get-started {
            background-color: #5fcf80;
            border-color: #5fcf80;
        }

        .sitename {
            color: #5fcf80;
            font-family: 'Times New Roman', Times, serif;
        }

        .sitename1 {
            font-family: 'Times New Roman', Times, serif;
            color: #5fcf80;
        }

        .img-fluid1 {
            height: 420px;
        }

        .img-fluid2 {
            height: 250px;
            padding-top: 70px;
        }

        .img-fluid3 {
            height: 260px;
            padding-top: 70px;
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


                    <asp:Button ID="Button1" runat="server" Text="login" class="btn-getstarted" OnClick="Button1_Click" />
                </div>
            </header>
        </div>
        <main class="main">

            <!-- first Section -->
            <section id="hero" class="hero section dark-background">

                <img src="assets/img/pexels-fauxels-3183153.jpg" alt="" data-aos="fade-in">

                <div class="container">
                    <h2 data-aos="fade-up" data-aos-delay="100">Feedback Master</h2>
                    <p data-aos="fade-up" data-aos-delay="200">A system designed to improve your experience through your feedback.</p>
                    <div class="d-flex mt-4" data-aos="fade-up" data-aos-delay="300">

                        <asp:Button ID="Button2" runat="server" Text="Login" class="btn-get-started" OnClick="Button2_Click" />
                    </div>
                </div>

            </section>
            <!-- /first Section -->



            <!-- Why Us Section -->
            <section id="why-us" class="section why-us">

                <div class="container">

                    <div class="row gy-4">

                        <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
                            <div class="why-box">
                                <h3>Why Choose Our Feedback Master System for Courses?</h3>
                                <p>By seamlessly integrating advanced feedback mechanisms, it empowers educators to refine teaching methodologies and adapt curricula in real-time based on insightful student feedback. With a user-centric approach and customizable survey tools, our system not only enhances educational outcomes but also fosters a collaborative learning environment where student engagement and success are prioritized.              </p>


                            </div>
                        </div>
                        <!-- End Why Box -->

                        <div class="col-lg-8 d-flex align-items-stretch">
                            <div class="row gy-4" data-aos="fade-up" data-aos-delay="200">

                                <div class="col-xl-4">
                                    <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                                        <i class="bi bi-clipboard-data"></i>
                                        <h4>Real-time Feedback Integration</h4>
                                        <p>Streamlines the process of gathering and implementing student feedback to adapt teaching strategies promptly.</p>
                                    </div>
                                </div>
                                <!-- End Icon Box -->

                                <div class="col-xl-4" data-aos="fade-up" data-aos-delay="300">
                                    <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                                        <i class="bi bi-gem"></i>
                                        <h4>Customizable Survey Tools</h4>
                                        <p>Tailors surveys to specific educational goals, ensuring targeted insights for curriculum enhancement.</p>
                                    </div>
                                </div>
                                <!-- End Icon Box -->

                                <div class="col-xl-4" data-aos="fade-up" data-aos-delay="400">
                                    <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                                        <i class="bi bi-inboxes"></i>
                                        <h4>User-Centric Design</h4>
                                        <p>Provides an intuitive interface that promotes ease of use and encourages active student participation in the learning process.</p>
                                    </div>
                                </div>
                                <!-- End Icon Box -->

                            </div>
                        </div>

                    </div>

                </div>

            </section>
            <!-- /Why Us Section -->



     <!-- /Courses Section -->
      <section id="courses" class="courses section">

   <!-- Section Title -->
   <div class="container section-title" data-aos="fade-up">
     <h2>Courses</h2>
     <p>Popular Courses</p>
   </div><!-- End Section Title -->

   <div class="container">

     <div class="row">

       <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
         <div class="course-item">
           <img src="assets/img/C-sharp.png" class="img-fluid" alt="...">
           <div class="course-content">
             <h3><a href="course-details.html">C# Course</a></h3>
             <p class="description">Powerful, versatile, modern, secure, flexible.</p>
           </div>
         </div>
       </div> <!-- End Course Item-->

       <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
         <div class="course-item">
           <img src="assets/img/course_cplus.jpg" class="img-fluid" alt="...">
           <div class="course-content">
             <h3><a href="course-details.html">C++ Course</a></h3>
             <p class="description">Efficient, powerful, flexible, complex, foundational.</p>
           </div>
         </div>
       </div> <!-- End Course Item-->

       <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
         <div class="course-item">
           <img src="assets/img/course_js.png" class="img-fluid" alt="...">
           <div class="course-content">
             <h3><a href="course-details.html">Java Script Course </a></h3>
             <p class="description">Dynamic, versatile, ubiquitous, event-driven, flexible.</p>
           </div>
         </div>
       </div> <!-- End Course Item-->

     </div>

   </div>

 </section><!-- /Courses Section -->
            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Partners</h2>
                <p>Our Academic Partners </p>
                <h5>We are proud to collaborate with leading academic institutions who have adopted our feedback system to enhance their educational processes</h5>

            </div>
            <!-- End Section Title -->

            <!-- Partners Index Section -->
            <section id="trainers-index" class="section trainers-index">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-4 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="200">
                            <div class="member">
                                <img src="assets/img/udemy1.png" class="img-fluid2" alt=""><br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <div class="member-content">
                                    <h4>Udemy</h4>
                                    <span>Programming Academy</span>
                                    <p>
                                        Udemy offers affordable, flexible web development courses for all skill levels.
                                    </p>

                                </div>
                            </div>


                        </div>
                        <!--Partners -->
                        <div class="col-lg-4 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="100">
                            <div class="member">
                                <img src="assets/img/Coursera-Logo_600x600.svg.png" class="img-fluid1" alt=""><br />
                                <br />
                                <div class="member-content">
                                    <h4>Coursera</h4>
                                    <span>Programming Academy</span>
                                    <p>
                                        Coursera offers diverse web development courses to enhance your skills and advance your career.
                                    </p>

                                </div>
                            </div>
                        </div>
                        <!-- Partners -->


                        <div class="col-lg-4 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="300">
                            <div class="member">
                                <img src="assets/img/edx.jpg" class="img-fluid3" alt=""><br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <div class="member-content">
                                    <h4>EDX</h4>
                                    <span>Programming Academy</span>
                                    <p>edX offers flexible, online web development courses for all skill levels. </p>

                                </div>
                            </div>
                        </div>
                        <!-- Partners -->

                    </div>

                </div>

            </section>
            <!-- /Partners Index Section -->

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

                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3363.009721333997!2d35.851768!3d32.5525858!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151c7715f2c2e7ab%3A0x51755840c8ddbefd!2sOrange%20Digital%20Village%20Irbid!5e0!3m2!1sar!2sjo!4v1720345821898!5m2!1sar!2sjo" width="400" height="250" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>

                <div class="container copyright text-center mt-4">
                    <p>© <span>Copyright</span> <strong class="px-1 sitename">FeedBack Master</strong> <span>All Rights Reserved</span></p>
                    <div class="credits">

                        <!-- Licensing information: https://bootstrapmade.com/license/ -->


                    </div>
                </div>
        </footer>
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
    </div>
    </form>
</body>
</html>
