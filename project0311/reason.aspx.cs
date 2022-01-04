using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project0311
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        public void ContinueBtn_Clicked(object sender, EventArgs e)
        {
            
            Response.Redirect("documents1.aspx");
        }

    }
}