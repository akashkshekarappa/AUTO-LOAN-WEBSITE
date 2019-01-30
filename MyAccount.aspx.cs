using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WADProject.App_Code;

namespace WADProject
{
    public partial class MyAccount : System.Web.UI.Page
    {
        public Boolean signIn = false;
        public Boolean update = false;
        protected void Page_Load(object sender, EventArgs e)
        {

            var user = Session["currentuser"] as UserInfo;
            List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;

            signIn = Request.QueryString["isSign"] == "1";
            var sign_InUser = Session["signInUser"];
            update = Request.QueryString["isUpdate"] == "1";

            if (signIn)
            {
                if (allUsersList != null)
                {
                    foreach (var aUser in allUsersList)
                    {
                        if (aUser.EmailAddress1.Equals(sign_InUser))
                        {
                            emailAddress1.Text = aUser.EmailAddress1;
                            SignInName.InnerText = "Welcome" + "  " + aUser.FirstName + " " + aUser.LastName + "    ";
                            loanAmount.Text = aUser.LoanInfo.LoanAmount;
                            loanTerm.Text = aUser.LoanInfo.LoanTerm;
                            loanPaymentMethod.Text = aUser.LoanInfo.LoanPaymentMethod;
                            primaryLoanPurpose.Text = aUser.LoanInfo.PrimaryLoanPurpose;
                            applicationType.Text = aUser.LoanInfo.ApplicationType;

                            //break;
                        }
                    }

                }
            }

            else if (update)
            {
                if (user != null && user.LoanInfo != null)
                {
                    emailAddress1.Text = user.EmailAddress1;
                    SignInName.InnerText = "Welcome" + "  " + user.FirstName + " " + user.LastName + "     ";
                    loanAmount.Text = user.LoanInfo.LoanAmount;
                    loanTerm.Text = user.LoanInfo.LoanTerm;
                    loanPaymentMethod.Text = user.LoanInfo.LoanPaymentMethod;
                    primaryLoanPurpose.Text = user.LoanInfo.PrimaryLoanPurpose;
                    applicationType.Text = user.LoanInfo.ApplicationType;
                }
            }


            else
            {
                
                if (user != null && user.LoanInfo != null)
                {
                    emailAddress1.Text = user.EmailAddress1;
                    SignInName.InnerText = "Welcome" + "  " + user.FirstName + " " + user.LastName + "     ";
                    loanAmount.Text = user.LoanInfo.LoanAmount;
                    loanTerm.Text = user.LoanInfo.LoanTerm;
                    loanPaymentMethod.Text = user.LoanInfo.LoanPaymentMethod;
                    primaryLoanPurpose.Text = user.LoanInfo.PrimaryLoanPurpose;
                    applicationType.Text = user.LoanInfo.ApplicationType;
                }

            }

           
            

            }
        protected void personalInfo(object sender, EventArgs e)
        {
             Session["signInUser"] = emailAddress1.Text;
            Session["editPersonal"] = editPersonalInfo;
            Response.Redirect("Loan_App.aspx?isEditPersonal=1");
        }

        protected void loanInfo(object sender, EventArgs e)
        {
            Response.Redirect("enter_LoanInfo.aspx?isClick=1");
        }

        public void OnConfirm(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "OK")
            {
                Session.Abandon();
                //FormsAuthentication.SignOut();
               
                Response.Redirect("default.aspx");
            }
            else
            {
                //this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked NO!')", true);
                return;
            }
        }

    }
}