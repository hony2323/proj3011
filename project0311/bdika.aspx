<!doctype html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bdika.aspx.cs" Inherits="project0311.bdika"%>

<html lang="en" >
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
		
	
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

        .needs-validation {
        }
    </style>
  </head>

  <body class="bg-light">

    <div class="container">
      <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
        <h2></h2>
      
      </div>

      <div class="row">
      
        <div class="col-md-12 order-md-1">
          
          <form runat="server" class="needs-validation" novalidate dir="rtl">              
              
             <h1 style="margin-left:30%">
              בקשתך בבדיקה...
             </h1>
            

            <hr class="mb-4">
              <div style="display:flex;justify-content:space-evenly">

                  <asp:Button Style="width: 20vw" OnClick="ApplicationStatus" runat="server" class="btn btn-primary btn-lg btn-block" type="submit" Text="ראה סטטוס בקשה" />
                  <asp:Button Style="width: 20vw" OnClick="ReturnHome" runat="server" class="btn btn-primary btn-lg btn-block" type="submit" Text="חזור לדף הראשי" />
              </div>
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
