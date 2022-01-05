using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project0311
{
    public partial class documents1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["action"] == null && Session["reason"] == null)
            {
                Action.Value = "";
                Reason.Value = "";
                return;
            }    

            Action.Value = Session["action"].ToString();
            Reason.Value = Session["reason"].ToString();
        }

        public void SubmitBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("bdika.aspx");
        }

        public void Do_som(object sender, EventArgs e)
        {
            Response.Redirect("bdika.aspx");
        }
    }
}