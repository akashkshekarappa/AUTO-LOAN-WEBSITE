using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WADProject.App_Code;

namespace WADProject
{
    public partial class sign_In : System.Web.UI.Page
    {
        bool redirect = true;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignIn(object sender, EventArgs e)
        {
            List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;

            if (allUsersList != null)
            {
                foreach (var aUser in allUsersList)
                {
                    if (aUser.EmailAddress1.Equals(emailAddress1.Text))
                    {
                        if (aUser.PassWord.Equals(passWord.Text))
                        {
                            Session["signInUser"] = emailAddress1.Text;
                            //  Session["isSign"] = signInName;
                            Session["currentuser"] = aUser;
                            Response.Redirect("MyAccount.aspx?isSign=1");
                            break;
                        }
                        
                    }
                    else if (aUser.PassWord != passWord.Text)
                    {
                        string redirectScript = " window.location.href = 'sign_In.aspx';";
                        System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(), "Please Create Account", "alert('Invalid password. Please enter a valid password');" + redirectScript, true);
                    }

                    else if(aUser.EmailAddress1 != emailAddress1.Text)
                    {
                        string redirectScript = " window.location.href = 'Loan_App.aspx';";
                        System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(), "Please Create Account", "alert('User doesnt exists. Please Create Account');" + redirectScript, true);
                    }
                    

                }
            }
            else 
            {
                string redirectScript = " window.location.href = 'Loan_App.aspx';";
                System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(), "Please Create Account", "alert('User doesnt exists. Please Create Account');" + redirectScript, true);
            }




        }
    }
}