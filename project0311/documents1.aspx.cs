using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project0311
{
    public partial class documents1 : System.Web.UI.Page
    {
        private Dictionary<string, List<string>> allDescriptions = new Dictionary<string, List<string>> {
            { "מחלה ממארת", new List<string>(){ "סיכום טיפול אחרון במכון אונקולוגי", "סיכום מידע רפואי" } }
            ,{ "מחלות מעי דלקתיות", new List<string>(){ "סיכומי ביקור במכון גסטרו", "סיכום מידע רפואי", "דוח רכש תרופות" } }



            , { "רישיון חדש", new List<string>(){ "טופס הסכמה לקבלת שירות – טיפול בהוצאת רישיון לשימוש בקנביס רפואי", "דף מידע והסבר – טיפול בהנפקת רישיון לשימוש בקנביס - לא לחתימה", "בקשת הצטרפות לשירות צפייה בתוצאות אינטרנט" } }
            , { "חידוש רישיון", new List<string>(){  "טופס הסכמה לקבלת שירות – טיפול בהוצאת רישיון לשימוש בקנביס רפואי", "דף מידע והסבר – טיפול בהנפקת רישיון לשימוש בקנביס - לא לחתימה", "בקשת הצטרפות לשירות צפייה בתוצאות אינטרנט" } }

        };
        //private Dictionary<string, List<string>> actionDescriptions = new Dictionary<string, List<string>> {
        //    { "רישיון חדש", new List<string>(){ "טופס הסכמה לקבלת שירות – טיפול בהוצאת רישיון לשימוש בקנביס רפואי", "דף מידע והסבר – טיפול בהנפקת רישיון לשימוש בקנביס - לא לחתימה", "בקשת הצטרפות לשירות צפייה בתוצאות אינטרנט" } }
        //};
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["action"] == null && Session["reason"] == null)
            {
                Action.Value = "";
                Reason.Value = "";
                return;
            }
            string file_requirement = "";
            string file_id = "file";
            string theHtml = "";
            int counter = 0;
            Action.Value = Session["action"].ToString();
            Reason.Value = Session["reason"].ToString();

            foreach (var fileDiscription in allDescriptions[Reason.Value])
            {
                theHtml += getFullDivExample(file_id + counter, fileDiscription);

                counter++;
            }
            foreach (var fileDiscription in allDescriptions[Action.Value])
            {
                theHtml += getFullDivExample(file_id + counter, fileDiscription);

                counter++;
            }

            AllDocs.InnerHtml = theHtml;
        }

        public void SubmitBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("bdika.aspx");
        }

        private string getFullDivExample(string file_id, string file_requirement)
        {
            return $"<div class=\"input_div\"> <input type = \"file\" id = \"{file_id}\" class=\"file\" /><label for=\"{file_id}\">{file_requirement}</label></div>";
        }

    }

}