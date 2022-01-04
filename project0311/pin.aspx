﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pin.aspx.cs" Inherits="project0311.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" >
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" >
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
    <script>
        document.addEventListener("DOMContentLoaded", function (event) {

            function OTPInput() {
                const inputs = document.querySelectorAll('#otp > *[id]');
                for (let i = 0; i < inputs.length; i++) { inputs[i].addEventListener('keydown', function (event) { if (event.key === "Backspace") { inputs[i].value = ''; if (i !== 0) inputs[i - 1].focus(); } else { if (i === inputs.length - 1 && inputs[i].value !== '') { return true; } else if (event.keyCode > 47 && event.keyCode < 58) { inputs[i].value = event.key; if (i !== inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } else if (event.keyCode > 64 && event.keyCode < 91) { inputs[i].value = String.fromCharCode(event.keyCode); if (i !== inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } } }); }
            } OTPInput();
        });
    </script>
    <style>
        body {
    background-color: red
}

.height-100 {
    height: 100vh
}

.card {
    width: 400px;
    border: none;
    height: 300px;
    box-shadow: 0px 5px 20px 0px #d2dae3;
    z-index: 1;
    display: flex;
    justify-content: center;
    align-items: center
}

.card h6 {
    color: red;
    font-size: 20px
}

.inputs input {
    width: 40px;
    height: 40px
}

input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    margin: 0
}

.card-2 {
    background-color: #fff;
    padding: 10px;
    width: 350px;
    height: 100px;
    bottom: -50px;
    left: 20px;
    position: absolute;
    border-radius: 5px
}

.card-2 .content {
    margin-top: 50px
}

.card-2 .content a {
    color: red
}

.form-control:focus {
    box-shadow: none;
    border: 2px solid red
}

.validate {
    border-radius: 20px;
    height: 40px;
    background-color: red;
    border: 1px solid red;
    width: 140px
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container height-100 d-flex justify-content-center align-items-center">
    <div class="position-relative">
        <div class="card p-2 text-center">
            <h6>בבקשה הכנס את הקוד החד פעמי שנשלח לנייד  <br> לצרכי אימות הנתונים</h6>
            <div> <span>קוד נשלח ל </span> <small>*******9897</small> </div>
            <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2"> <input class="m-2 text-center form-control rounded" type="text" id="first" maxlength="1" /> <input class="m-2 text-center form-control rounded" type="text" id="second" maxlength="1" /> <input class="m-2 text-center form-control rounded" type="text" id="third" maxlength="1" /> <input class="m-2 text-center form-control rounded" type="text" id="fourth" maxlength="1" /> <input class="m-2 text-center form-control rounded" type="text" id="fifth" maxlength="1" /> <input class="m-2 text-center form-control rounded" type="text" id="sixth" maxlength="1" /> </div>
            <div class="mt-4"> <%--<button class="btn btn-danger px-4 validate">אישור</button>--%>
                <asp:Button Text="אישור" OnClick="SubmitBtn_Click" class="btn btn-danger px-4 validate" runat="server" />
            </div>
        </div>
        <div class="card-2">
            <div class="content d-flex justify-content-center align-items-center"> <span>לא קיבלת את הקוד </span> <a href="#" class="text-decoration-none ms-3">שלח מחדש(1/3)</a> </div>
        </div>
    </div>
</div>
    </form>
</body>
</html>
