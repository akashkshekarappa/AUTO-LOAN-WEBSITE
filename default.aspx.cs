using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.UI.HtmlControls;


namespace WADProject
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Request.ContentType = "text/css";
        }
        protected void verify(object sender, EventArgs e)
        {
            Response.Redirect("verify.aspx");

        }
        protected void usedCar(object sender, EventArgs e)
        {
            Session["isUsed"] = UsedCar;
            Response.Redirect("sign_In.aspx");
        }

        protected void sign_In(object sender, EventArgs e)
        {
            Response.Redirect("sign_In.aspx");

        }
    }
}