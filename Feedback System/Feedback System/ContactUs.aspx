<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Feedback_System.ContactUs" %>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="assets/css/main.css" rel="stylesheet" />

    <style>
        /* Conatct start */

        .header-title {
            text-align: center;
            color: #5FCF80;
        }

        #tip {
            display: none;
        }

        .fadeIn {
            animation-duration: 3s;
        }

        .form-control {
            border-radius: 0px;
            border: 1px solid #EDEDED;
        }

            .form-control:focus {
                border: 1px solid #00bfff;
            }

        .textarea-contact {
            resize: none;
        }

        .btn-send {
            border-radius: 0px;
            border: 1px solid #00bfff;
            background: #5FCF80;
            color: #fff;
        }

            .btn-send:hover {
                border: 1px solid #00bfff;
                background: #fff;
                color: #00bfff;
                transition: background 0.5s;
            }

        .second-portion {
            margin-top: 50px;
        }

        @import "//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css";
        @import "http://fonts.googleapis.com/css?family=Roboto:400,500";

        .box > .icon {
            text-align: center;
            position: relative;
        }

            .box > .icon > .image {
                position: relative;
                z-index: 2;
                margin: auto;
                width: 88px;
                height: 88px;
                border: 8px solid white;
                line-height: 88px;
                border-radius: 50%;
                background: #5FCF80;
                vertical-align: middle;
            }

            .box > .icon:hover > .image {
                background: #333;
            }

            .box > .icon > .image > i {
                font-size: 36px !important;
                color: #fff !important;
            }

            .box > .icon:hover > .image > i {
                color: white !important;
            }

            .box > .icon > .info {
                margin-top: -24px;
                background: rgba(0, 0, 0, 0.04);
                border: 1px solid #e0e0e0;
                padding: 15px 0 10px 0;
                min-height: 163px;
            }

            .box > .icon:hover > .info {
                background: rgba(0, 0, 0, 0.04);
                border-color: #e0e0e0;
                color: white;
            }

            .box > .icon > .info > h3.title {
                font-family: "Robot",sans-serif !important;
                font-size: 16px;
                color: #222;
                font-weight: 700;
            }

            .box > .icon > .info > p {
                font-family: "Robot",sans-serif !important;
                font-size: 13px;
                color: #666;
                line-height: 1.5em;
                margin: 20px;
            }

            .box > .icon:hover > .info > h3.title, .box > .icon:hover > .info > p, .box > .icon:hover > .info > .more > a {
                color: #222;
            }

            .box > .icon > .info > .more a {
                font-family: "Robot",sans-serif !important;
                font-size: 12px;
                color: #222;
                line-height: 12px;
                text-transform: uppercase;
                text-decoration: none;
            }

            .box > .icon:hover > .info > .more > a {
                color: #fff;
                padding: 6px 8px;
                background-color: #63B76C;
            }

        .box .space {
            height: 30px;
        }

        @media only screen and (max-width: 768px) {
            .contact-form {
                margin-top: 25px;
            }

            .btn-send {
                width: 100%;
                padding: 10px;
            }

            .second-portion {
                margin-top: 25px;
            }
        }
        /* Conatct end */
        .container-fluid {
            display: flex;
            align-items: center;
        }

        .navmenu {
            margin-left: 60rem;
        }

        .header .logo h1 {
            margin-left: 10rem;
        }

        .btn-getstarted {
            padding: 10px 20px;
            background-color: #5FCF80;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        @media only screen and (max-width: 768px) {
            .navmenu {
            }

            .btn-getstarted {
                margin-top: 10px;
                width: 100%;
            }
        }

        .sitename {
            color: #5fcf80;
            font-family: 'Times New Roman', Times, serif;
        }
    </style>
    <!-- Include ASP.NET Client-Side Validation Script -->
    <script src="Scripts/WebForms/WebUIValidation.js" type="text/javascript"></script>
</head>
<body>
    <form id="contactForm" runat="server">
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
        <div class="container animated fadeIn">

            <div class="row">
                <h1 class="header-title">Contact </h1>
                <hr>
                <div class="col-sm-12" id="parent">
                    <div class="col-sm-6">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3363.009721333997!2d35.851768!3d32.5525858!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151c7715f2c2e7ab%3A0x51755840c8ddbefd!2sOrange%20Digital%20Village%20Irbid!5e0!3m2!1sar!2sjo!4v1720345821898!5m2!1sar!2sjo" width="400" height="250" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name" Required="true" AutoFocus="true"></asp:TextBox>
                        </div>
                        <div class="form-group form_left">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email" Required="true" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Mobile No." MaxLength="10" Required="true" onkeypress="return event.charCode >= 48 &amp;&amp; event.charCode <= 57"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtComment" runat="server" CssClass="form-control textarea-contact" Rows="5" TextMode="MultiLine" placeholder="Type Your Message/Feedback here..." Required="true"></asp:TextBox>
                            <br />
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-default btn-send" Text="Send" OnClick="btnSubmit_Click" />
                            <br />

                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <!-- Boxes de Acoes -->
        <div class="col-xs-12 col-sm-6 col-lg-4">
            <div class="box">
                <div class="icon">
                    <div class="image"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                    <div class="info">
                        <h3 class="title">MAIL & WEBSITE</h3>
                        <p>
                            <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp HR@FeedbackMaster.com
							<br>
                            <br>
                            <i class="fa fa-globe" aria-hidden="true"></i>&nbsp www.Feedback_Master.com
                        </p>

                    </div>
                </div>
                <div class="space"></div>
            </div>
        </div>

        <div class="col-xs-12 col-sm-6 col-lg-4">
            <div class="box">
                <div class="icon">
                    <div class="image"><i class="fa fa-mobile" aria-hidden="true"></i></div>
                    <div class="info">
                        <h3 class="title">CONTACT</h3>
                        <p>
                            <i class="fa fa-mobile" aria-hidden="true"></i>&nbsp (+962)-797182579
							<br>
                            <br>
                            <i class="fa fa-mobile" aria-hidden="true"></i>&nbsp  (+962)-777772011
                        </p>
                    </div>
                </div>
                <div class="space"></div>
            </div>
        </div>

        <div class="col-xs-12 col-sm-6 col-lg-4">
            <div class="box">
                <div class="icon">
                    <div class="image"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                    <div class="info">
                        <h3 class="title">ADDRESS</h3>
                        <p>
                            <i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp HR3X+2VM, Sh. Sheikh Khalil, Irbid
                        </p>
                    </div>
                </div>
                <div class="space"></div>
            </div>
        </div>
        <!-- /Boxes de Acoes -->

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
                    </div>
                </div>
        </footer>


    </form>
</body>

</html>
