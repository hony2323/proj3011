<!doctype html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="documents3.aspx.cs" Inherits="project0311.documents3" %>


<html lang="en">
  <head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
		
	    <script>
            document.addEventListener("DOMContentLoaded", function (event) {

                function OTPInput() {
                    const inputs = document.querySelectorAll('#otp > *[id]');
                    for (let i = 0; i < inputs.length; i++) { inputs[i].addEventListener('keydown', function (event) { if (event.key === "Backspace") { inputs[i].value = ''; if (i !== 0) inputs[i - 1].focus(); } else { if (i === inputs.length - 1 && inputs[i].value !== '') { return true; } else if (event.keyCode > 47 && event.keyCode < 58) { inputs[i].value = event.key; if (i !== inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } else if (event.keyCode > 64 && event.keyCode < 91) { inputs[i].value = String.fromCharCode(event.keyCode); if (i !== inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } } }); }
                } OTPInput();
            });
    </script>

    <title>Checkout example for Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/checkout/">

    <!-- Bootstrap core CSS -->
    
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	
	
	

    <!-- Custom styles for this template -->
    <style>
	.container {
  max-width: 960px;
}

.border-top { border-top: 1px solid #e5e5e5; }
.border-bottom { border-bottom: 1px solid #e5e5e5; }
.border-top-gray { border-top-color: #adb5bd; }

.box-shadow { box-shadow: 0 .25rem .75rem rgba(0, 0, 0, .05); }

.lh-condensed { line-height: 1.25; }

        .btn {
            width: 40vw;
            border:1px solid #2855be;
            cursor:pointer;

        }

    </style>
  </head>

  <body class="bg-light" runat="server">

    <div class="container">
      <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
        <h2></h2>
      
      </div>

      <div class="row">
      
        <div class="col-md-12 order-md-1">
          
          <form class="needs-validation" novalidate runat="server">
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">פעולה</label>
                <input type="text" class="form-control" value="חידוש רישיון" >
                 
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Disease type</label>
                <input type="text" class="form-control" value=" מחלה ממארת"   >
               
              </div>
            </div>

            <div class="mb-3">
              <h5 class="mb-3">Documents</h5>
              
            </div>

            <div class="mb-3">
            <div class="input_div">
                <input type="file" id="file1" class="file" />
                <label for="file1">(שם קובץ)</label>
            </div>
            <div class="input_div">
                <input type="file" id="file2" class="file" />
                <label for="file2">(שם קובץ)</label>
            </div>
            <div class="input_div">
                <input type="file" id="file3" class="file" />
                <label for="file3">(שם קובץ)</label>
            </div>
            <div class="input_div">
                <input type="file" id="file4" class="file" />
                <label for="file4">(שם קובץ)</label>
            </div>
            </div>

            <div 
              
              
              
            
            </div>

            <div class="mb-3">
              
             
            </div>

            <div class="row">
               
             
           
            </div>
         
            
            <hr class="mb-4">

            <h4 class="mb-3">תנאי שירות כלליים</h4>
			           
            <div class="row">

              <div class="col-lg-12">
               <a href='' <label for="address">טופס הסכמה לקבלת שירות - טיפול בהוצאת רשיון לשימוש בקנאביס רפואי </label></a>
              </div>
			   <div class="col-lg-12">
                <a href='' <label for="address">דף מידע והסבר - טיפול בהנפקת רישיון לשימוש בקאנביס - לא לחתימה </label></a>
              </div>
			    <div class="col-lg-12">
                <a href='' <label for="address">בקשת הצטרפות לשירות צפיה בתוצאות אינטרנט </label></a>
              </div>
			  
              
            </div>
        
            <hr class="mb-4">
              <asp:Button runat="server" OnClick="SubmitBtn_Click" Text="שלח" style="width:200px"  CssClass="btn-outline-primary"/>
          </form>
        </div>
      </div>

    
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
     
    <script>
 
    </script>
  </body>
</html>
