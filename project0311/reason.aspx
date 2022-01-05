<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reason.aspx.cs" Inherits="project0311.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            display:flex;
            justify-content:center;
        }

        form {
            background-color: rgba(255, 255, 255, 0.51);
            width: 50vw;
            position:center;
        }
    </style>
</head>
<body>
    <form id="form1" style="display: flex; flex-direction: column; align-items: center" runat="server">
        <h2 style="color: black; text-align: center;margin-top:5%">בחרו את הפעולה הרצויה ואת הסיבה הרלוונטית עבורכם לרישיון לקנביס
        </h2>
        <br />
        <div style="display: flex; flex-direction: row-reverse; width: 100%;margin-top:5%; justify-content: center">
            <b style="margin: 0.5% 10% 0 1%; font-size: large">בחר פעולה</b>

            <div class="dropdown">

                <%--  <button style="margin-left:auto" class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" 
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  
      לחץ לבחירת הפעולה הרצויה
  </button>--%>
                <%--  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">רישיון חדש</a>
    <a class="dropdown-item" href="#">חידוש רישיון</a>
     <a class="dropdown-item" href="#">שינוי משנע</a>
     <a class="dropdown-item" href="#">שינוי מינון</a>
    <a class="dropdown-item" href="#">פעולה אחרת</a>
  </div>--%>
                <asp:DropDownList Style="margin-left: auto; color: white" class="btn btn-secondary dropdown-toggle" type="button" ID="DropDownList_Action"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" runat="server">
                    <asp:ListItem>רישיון חדש</asp:ListItem>
                    <asp:ListItem>חידוש רישיון</asp:ListItem>
                    <asp:ListItem>שינוי משנע</asp:ListItem>
                    <asp:ListItem>שינוי מינון</asp:ListItem>
                    <asp:ListItem>פעולה אחרת</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <br />
            <br />

            <b style="margin: 0.5% 10% 0 1%; font-size: large">בחר סיבה</b>
            <div class="dropdown">
                <asp:DropDownList Style="margin-left: auto; color: white" class="btn btn-secondary dropdown-toggle" type="button" ID="DropDownList_Reason"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" runat="server">
                    <asp:ListItem>מחלה ממארת</asp:ListItem>
                    <asp:ListItem>מחלות מעי דלקתיות</asp:ListItem>
                    <asp:ListItem>כאב כרוני ממושך</asp:ListItem>
                    <asp:ListItem>שינוי מינון</asp:ListItem>
                    <asp:ListItem>אנדומטריוזיס</asp:ListItem>
                    <asp:ListItem>מיגרנה</asp:ListItem>
                    <asp:ListItem>פעולה פיברומיאלגיה</asp:ListItem>
                    <asp:ListItem>איידס</asp:ListItem>
                    <asp:ListItem>אפילפסיה במבוגרים</asp:ListItem>
                    <asp:ListItem>אפילפסיה בלתי נשלטת בילדים</asp:ListItem>
                    <asp:ListItem>ניוון שרירים</asp:ListItem>
                    <asp:ListItem>טיפול פליאטיבי בחולה סופני</asp:ListItem>
                    <asp:ListItem>פרקינסון</asp:ListItem>
                    <asp:ListItem>אחר</asp:ListItem>
                </asp:DropDownList>

                <%--  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonB" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    לחץ לבחירת הסיבה
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">מחלה ממארת</a>
    <a class="dropdown-item" href="#">מחלות מעי דלקתיות</a>
    <a class="dropdown-item" href="#">כאב כרוני ממושך</a>
    <a class="dropdown-item" href="#">אנדומטריוזיס</a>
    <a class="dropdown-item" href="#">מיגרנה</a>
    <a class="dropdown-item" href="#">פיברומיאלגיה</a>
    <a class="dropdown-item" href="#">איידס | HIV</a>
    <a class="dropdown-item" href="#">טרשת נפוצה/ניוון שרירים</a>
    <a class="dropdown-item" href="#">אפילפסיה במבוגרים</a>
    <a class="dropdown-item" href="#">אפילפסיה בלתי נשלטת בילדים</a>
    <a class="dropdown-item" href="#">טיפול פליאטיבי בחולה סופני</a>
    <a class="dropdown-item" href="#">פרקינסון</a>
    <a class="dropdown-item" href="#">אחר</a>
  </div>
</div>--%>
            </div>
        </div>
            <asp:Button OnClick="ContinueBtn_Clicked" style="width:100px;margin-top:5%" class="btn btn-primary btn-block" runat="server"  Text="המשך"/>
    </form>
</body>
</html>
