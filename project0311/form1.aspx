<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form1.aspx.cs" Inherits="project0311.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <style>
        body {
            background: url('https://www.קנאביס.com/wp-content/uploads/2011/10/LNS_15-04-2011_EGN_03_dope-leaf-LNS1503_t325.jpg') fixed;
            background-size: cover;
        }

        *[role="form"] {
            max-width: 530px;
            padding: 15px;
            margin: 0 auto;
            border-radius: 0.3em;
            background-color: #f2f2f2;
        }

            *[role="form"] h2 {
                font-family: 'Open Sans', sans-serif;
                font-size: 40px;
                font-weight: 600;
                color: #000000;
                margin-top: 5%;
                text-align: center;
                text-transform: uppercase;
                letter-spacing: 4px;
            }
    </style>

    <title></title>
</head>
<body>
    <form id="form1" style="width: 50%; margin: auto" class="form-horizontal" runat="server">
        <body style="direction: rtl">


            <h2 style="color: red; text-align: center">הרשמה לתהליך קבלת רישיון לשימוש בקנביס רפואי

            </h2>

            <h3 style="color: red; text-align: center">מלאו את הפרטים ולחצו על כפתור ההרשמה

            </h3>

            <div class="form-group">

                <div class="col-sm-9">
                    <input type="text" id="firstName" placeholder="שם פרטי" class="form-control" autofocus>
                </div>
                <label for="שם פרטי" class="col-sm-3 control-label">שם פרטי*</label>
            </div>
            <div class="form-group">

                <div class="col-sm-9">
                    <input type="text" id="lastName" placeholder="שם משפחה" class="form-control" autofocus>
                </div>
                <label for="שם משפחה" class="col-sm-3 control-label">שם משפחה*</label>
            </div>
            <div class="form-group">

                <div class="col-sm-9">
                    <input type="email" id="email" placeholder="אי-מייל" class="form-control" name="email">
                </div>
                <label for="אי-מייל" class="col-sm-3 control-label">אי-מייל* </label>
            </div>

            <div class="form-group">

                <div class="col-sm-9">
                    <input type="date" id="birthDate" class="form-control">
                </div>
                <label for="תאריך לידה" class="col-sm-3 control-label">תאריך לידה*</label>
            </div>
            <div class="form-group">

                <div class="col-sm-9">
                    <input type="phoneNumber" id="phoneNumber" placeholder="מספר סלולרי" class="form-control">
                    <span class="help-block">Your phone number won't be disclosed anywhere </span>
                </div>
                <label for="מספר סלולרי" class="col-sm-3 control-label">מספר סלולרי* </label>
            </div>


            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <span class="help-block">*שדה חובה</span>
                </div>
            </div>
            <asp:Button OnClick="RegBtn_Click" class="btn btn-primary btn-block" runat="server" Text="הרשמה" />
    </form>
    <!-- /form -->
    </div>
    <!-- ./container -->
    <script>

        $(function () {
            $.validator.setDefaults({
                highlight: function (element) {
                    $(element)
                        .closest('.form-group')
                        .addClass('has-error')
                },
                unhighlight: function (element) {
                    $(element)
                        .closest('.form-group')
                        .removeClass('has-error')
                }
            });

            $.validate({
                rules:
                {
                    password: "required",
                    birthDate: "required",
                    weight: {
                        required: true,
                        number: true
                    },
                    height: {
                        required: true,
                        number: true
                    },
                    email: {
                        required: true,
                        email: true
                    }
                },
                messages: {
                    email: {
                        required: true,
                        email: true
                    }
                },
                password: {
                    required: " Please enter password"
                },
                birthDate: {
                    required: " Please enter birthdate"
                },
                email: {
                    required: ' Please enter email',
                    email: ' Please enter valid email'
                },
                weight: {
                    required: " Please enter your weight",
                    number: " Only numbers allowed"
                },
                height: {
                    required: " Please enter your height",
                    number: " Only numbers allowed"
                },
            }
			
	});
});
    </script>
</body>
</html>
