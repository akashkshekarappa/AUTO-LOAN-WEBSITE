using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WADProject.App_Code;

namespace WADProject.views
{
    public partial class verify : System.Web.UI.Page
    {

        bool redirect = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            Request.ContentType = "text/css";          

        }
        protected void Loan_App(object sender, EventArgs e)
        {

            List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;

            //    if (allUsersList != null)
            //    {
            //        foreach (var aUser in allUsersList)
            //        {

            //            string conStr = "server=dcm.uhcl.edu;database=c432018sp02kurvashekarappaa;uid=	kurvashekarappaa;pwd=1650265";


            //            SqlConnection connectionToServer = new SqlConnection(conStr);

            //            string theStatement = "SELECT * from KurvashekarappaA_WADsp18_PersonalInfo";

            //            SqlCommand sqlCommand = new SqlCommand(theStatement, connectionToServer);

            //            try
            //            {
            //                connectionToServer.Open();
            //                SqlDataReader sqlReader = sqlCommand.ExecuteReader();
            //                while (sqlReader.Read())
            //                {
            //                    UserInfo user = new UserInfo();
            //                    // get the results of each column
            //                    if ((sqlReader["EmailAddress1"]).Equals(EmailAddress1.Text))
            //                    {
            //                        string redirectScript = " window.location.href = 'Sign_In.aspx';";
            //                        System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "alert(' User " + " " + EmailAddress1.Text + " " + " already exists. Please login.');" + redirectScript, true);
            //                        redirect = false;

            //                        Session["currentuser"] = aUser;

            //                        redirect = false;
            //                        Session["isExists"] = CogLinkButton;
            //                    }


            //                    //allUsersList.Add(user);
            //                }
            //            }
            //            finally { connectionToServer.Close(); }


            //        }
            //    }
            //    if (redirect)
            //    {
            //        Response.Redirect("Loan_App.aspx");
            //    }

            //}

            if (allUsersList != null)
            {
                foreach (var aUser in allUsersList)
                {
                    if (aUser.EmailAddress1.Equals(EmailAddress1.Text))
                    {
                        string redirectScript = " window.location.href = 'Sign_In.aspx';";
                        System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "alert(' User " + " " + EmailAddress1.Text + " " + " already exists. Please login.');" + redirectScript, true);

                        Session["currentuser"] = aUser;

                        redirect = false;
                        Session["isExists"] = CogLinkButton;
                        //Response.Redirect("Loan_App.aspx");

                        break;
                    }
                }
            }


            if (redirect)
            {
                Response.Redirect("Loan_App.aspx");
            }
        }
    }
}