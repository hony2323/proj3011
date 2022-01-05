<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="project0311.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body {
            background: url('https://www.קנאביס.com/wp-content/uploads/2011/10/LNS_15-04-2011_EGN_03_dope-leaf-LNS1503_t325.jpg') fixed;
            background-size: cover;
            display:flex;
            justify-content:center;
            align-items:center;
            height: 100vh;
        }

        form {
            height: auto;
            width: 70vw;
            background-color: rgba(255, 255, 255, 0.60);
            border-radius:20%;
        }

        div.parag {
            direction:rtl;
            font-size:xx-large;
        }
        .mybutton{
            cursor:pointer;
            font-size:large;
            border: 5px #007aff solid;
            color: #007aff;
            
        }

        .mybutton:hover {
            background-color: #007aff;
            color:white;
            transition:0.3s;   
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="parag">
        <h2>מור קנביס</h2> 
            שירות דיגיטלי לסיוע בהוצאת רישיון / חידוש רישיון לשימוש בקנביס רפואי, שינוי מינון ושינוי משנע. <br /> <br />


            השירות ניתן ללקוחות כל קופות החולים.<br /> <br />

            השירות נוח לשימוש, יעיל ומקצר תהליכים.<br /> <br /> <br />

            השירות הוא בעלות שנקבעה ע"י משרד הבריאות והסדרת התשלום תתבצע בתום התהליך לפני קבלת אישור הרישיון.<br /> <br />

            בכל שלב ניתן ליצור קשר טלפוני לתמיכה בשימוש במערכת <br /> <br />

            בתום התהליך ישלחו אל מבקש הבקשה רישיון ושישה מרשמים חודשיים לרכישת קנביס רפואי לחצי שנה <br /> <br />

            התהליך מתאפשר בליווי מסמכים שמבקש הבקשה נדרש להצטייד בהם לטובת הוצאת רישיון. פירוט המסמכים יותאם לפעולה הנדרשת במערכת ולסוג הסיבה שבעקבותיה יותר הרישיון.<br /> <br />

            על מנת להתחיל תהליך לחצו על "המשך" ויפתח בפניכם מסך להעלאת הפרטים האישיים. <br /> <br />
        <asp:Button  runat="server" Text="המשך" OnClick="BtnContinue" style="width:200px"  CssClass="mybutton"/>

        </div>

    </form>
</body>
</html>
