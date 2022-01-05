using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project0311
{
    public partial class bdika : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ReturnHome(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
        protected void ApplicationStatus(object sender, EventArgs e)
        {
            Response.Redirect("status.aspx");
        }



    }
}