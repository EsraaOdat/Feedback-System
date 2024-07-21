<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="Feedback_System.WelcomePage" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thank you page</title>
    <link rel="stylesheet" href="thank.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <style>
        * {
            box-sizing: border-box;
            /* outline:1px solid ;*/
        }

        body {
            background: #ffffff;
            background: linear-gradient(to bottom, #ffffff 0%,#e1e8ed 100%);
            height: 100%;
            margin: 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .wrapper-1 {
            width: 100%;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .wrapper-2 {
            padding: 30px;
            text-align: center;
        }

        h1 {
            font-family: 'Kaushan Script', cursive;
            font-size: 4em;
            letter-spacing: 3px;
            color: #5892FF;
            color: #44ca91;
            margin: 0;
            margin-bottom: 20px;
        }

        .wrapper-2 h4 {
            margin: 0;
            font-size: 1.3em;
            margin-bottom: 14px;
            color: #3e3e3e;
            font-family: 'Source Sans Pro', sans-serif;
            letter-spacing: 1px;
        }

        .wrapper-2 p {
            margin: 0;
            color: #5f5f5f;
            font-family: 'Source Sans Pro', sans-serif;
            letter-spacing: 1px;
            font-size: 18px;
        }

        .go-home {
            color: #fff;
            background: #5892FF;
            background: #44ca90;
            border: none;
            padding: 10px 50px;
            margin: 30px 0;
            border-radius: 30px;
            text-transform: capitalize;
            box-shadow: 0 10px 16px 1px rgba(174, 199, 251, 1);
        }

        .footer-like {
            margin-top: auto;
            background: #D7E6FE;
            background: #dadada;
            padding: 6px;
            text-align: center;
        }

            .footer-like p {
                margin: 0;
                padding: 4px;
                color: #5892FF;
                font-family: 'Source Sans Pro', sans-serif;
                letter-spacing: 1px;
            }

                .footer-like p a {
                    text-decoration: none;
                    color: #5892FF;
                    font-weight: 600;
                }

        @media (min-width:360px) {
            h1 {
                font-size: 4.5em;
            }

            .go-home {
                margin-bottom: 20px;
            }
        }

        @media (min-width:600px) {
            .content {
                max-width: 1000px;
                margin: 0 auto;
            }

            .wrapper-1 {
                height: initial;
                max-width: 620px;
                margin: 0 auto;
                margin-top: 100px;
                box-shadow: 4px 8px 40px 8px rgba(88, 146, 255, 0.2);
            }
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">

        <div class="content">
            <div class="wrapper-1">
                <div class="wrapper-2">
                    <h2>Thank you for participating in the training course!</h2>
                    <h4>Awesome! Your feedback helps us improve.  </h4>
                    <p>By taking just 3 minutes of your time to fill out this survey, you contribute to the quality of our future training courses. </p>

                    <asp:Button CssClass="go-home" ID="Start" runat="server" Text="Start" OnClick="Start_Click" />


                </div>
            </div>



            <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Source+Sans+Pro" rel="stylesheet">
            <!-- partial -->

        </div>

    </form>

</body>
</html>
