using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WADProject.App_Code;

namespace WADProject
{
    public partial class enter_LoanInfo : System.Web.UI.Page
    {
        //public Boolean isUsed = false;

        public Boolean editPersonal = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            Request.ContentType = "text/css";

            var currentUser = Session["currentuser"] as UserInfo;

            var exists = Session["isExists"];
            if (exists != null)
            {
                homeZip.Text = currentUser.HomeZip;
                loanAmount.Text = currentUser.LoanInfo.LoanAmount;
                loanTerm.Text = currentUser.LoanInfo.LoanTerm;
                loanPaymentMethod.Text = currentUser.LoanInfo.LoanPaymentMethod;
                primaryLoanPurpose.Text = currentUser.LoanInfo.PrimaryLoanPurpose;
                applicationType.Text = currentUser.LoanInfo.ApplicationType;
            }

            System.Diagnostics.Debug.WriteLine(Request.QueryString["isUsed"]);
            var used = Session["isUsed"];
            //isUsed = Request.QueryString["isUsed"] == "1";
            if (used != null)
            {
                primaryLoanPurpose.ClearSelection();
                primaryLoanPurpose.Items.FindByValue("Used Auto Purchase From Dealer").Selected = true;
                primaryLoanPurpose.Attributes.Add("disabled", "disabled");
            }
            else
            {
                primaryLoanPurpose.ClearSelection();
                primaryLoanPurpose.Items.FindByValue("New Auto Purchase").Selected = true;
            }

            editPersonal = Request.QueryString["isClick"] == "1";
            if (editPersonal)
            {
                homeZip.Text = currentUser.HomeZip;
                loanAmount.Text = currentUser.LoanInfo.LoanAmount;
                loanTerm.Text = currentUser.LoanInfo.LoanTerm;
                loanPaymentMethod.Text = currentUser.LoanInfo.LoanPaymentMethod;
                primaryLoanPurpose.Text = currentUser.LoanInfo.PrimaryLoanPurpose;
                applicationType.Text = currentUser.LoanInfo.ApplicationType;
                applicationType.Enabled = false;
                primaryLoanPurpose.Enabled = false;
                homeZip.Enabled = false;
                loanAmount.Enabled = false;
                loanTerm.Enabled = false;
                loanPaymentMethod.Enabled = false;
                confirmValidation.Enabled = false;
                confirmValidation.Checked = true;
                //goBack.Enabled = false;
                goBack.Text = "Go Back";

                //Response.Redirect("MyAccount.aspx");
                // Response.Redirect("MyAccount.aspx");


            }

        }

        protected void MyAccount(object sender, EventArgs e)
        {

            var currentUser = Session["currentuser"] as UserInfo;
            if (currentUser.LoanInfo != null)
            {
                homeZip.Text = currentUser.HomeZip;
                loanAmount.Text = currentUser.LoanInfo.LoanAmount;
                loanTerm.Text = currentUser.LoanInfo.LoanTerm;
                loanPaymentMethod.Text = currentUser.LoanInfo.LoanPaymentMethod;
                primaryLoanPurpose.Text = currentUser.LoanInfo.PrimaryLoanPurpose;
                applicationType.Text = currentUser.LoanInfo.ApplicationType;


            }
            else
            {
                //UserInfo user = new UserInfo();
                LoanInfor loan = new LoanInfor();
                currentUser.HomeZip = homeZip.Text;
                

                loan.LoanAmount = loanAmount.Text;
                loan.LoanTerm = loanTerm.Text;
                loan.LoanPaymentMethod = loanPaymentMethod.Text;
                loan.PrimaryLoanPurpose = primaryLoanPurpose.Text;
                loan.ApplicationType = applicationType.Text;

               

                currentUser.LoanInfo = loan;

         

                


                string conStr = "server=dcm.uhcl.edu;database=c432018sp02kurvashekarappaa;uid=	kurvashekarappaa;pwd=1650265";

                string userStatement = "insert into KurvashekarappaA_WADsp18_PersonalInfo values(@EmailAddress1, @EmailAddress2, @FirstName, @MiddleInitials, @LastName,@HomeStreetAddress, @HomeAptNo, @HomeCity, @HomeState, @HomeZip,@HomePhone,@TimeAtCurrentAddressYears,@TimeAtCurrentAddressMonths,@HousingStatus,@SocialSecurity,@DateOfBirth,@DriversLicenseLastFourDigits,@PassWord)";

               

                SqlConnection connectionToServer = new SqlConnection(conStr);

                SqlCommand userCommand = new SqlCommand(userStatement, connectionToServer);

                string theStatement = "insert into KurvashekarappaA_WADsp18_LoanInfo values(@EmailAddress1, @LoanType, @PrimaryLoanPurpose, @LoanAmount, @LoanTerm,@LoanPaymentMethod)";

                SqlCommand sqlCommand = new SqlCommand(theStatement, connectionToServer);


                connectionToServer.Open();
              

                userCommand.Parameters.AddWithValue(@"EmailAddress1", currentUser.EmailAddress1);
                userCommand.Parameters.AddWithValue(@"EmailAddress2", currentUser.EmailAddress2);
                userCommand.Parameters.AddWithValue(@"FirstName", currentUser.FirstName);
                userCommand.Parameters.AddWithValue(@"MiddleInitials", currentUser.MiddleInitials);
                userCommand.Parameters.AddWithValue(@"LastName", currentUser.LastName);
                userCommand.Parameters.AddWithValue(@"HomeStreetAddress", currentUser.HomeStreetAddress);
                userCommand.Parameters.AddWithValue(@"HomeAptNo", currentUser.HomeAptNo);
                userCommand.Parameters.AddWithValue(@"HomeCity", currentUser.HomeCity);
                userCommand.Parameters.AddWithValue(@"HomeState", currentUser.HomeState);
                userCommand.Parameters.AddWithValue(@"HomeZip", currentUser.HomeZip);
                userCommand.Parameters.AddWithValue(@"HomePhone", currentUser.HomePhone);
                userCommand.Parameters.AddWithValue(@"TimeAtCurrentAddressYears", currentUser.TimeAtCurrentAddressMonths);
                userCommand.Parameters.AddWithValue(@"TimeAtCurrentAddressMonths", currentUser.TimeAtCurrentAddressMonths);
                userCommand.Parameters.AddWithValue(@"HousingStatus", currentUser.HousingStatus);
                userCommand.Parameters.AddWithValue(@"SocialSecurity", currentUser.SocialSecurity);
                userCommand.Parameters.AddWithValue(@"DateOfBirth", currentUser.DateOfBirth);
                userCommand.Parameters.AddWithValue(@"DriversLicenseLastFourDigits", currentUser.DriversLicenseLastFourDigits);
                userCommand.Parameters.AddWithValue(@"PassWord", currentUser.PassWord);
               userCommand.ExecuteNonQuery();

                sqlCommand.Parameters.AddWithValue(@"EmailAddress1", currentUser.EmailAddress1);
                sqlCommand.Parameters.AddWithValue(@"LoanType", loan.ApplicationType);
                sqlCommand.Parameters.AddWithValue(@"PrimaryLoanPurpose", loan.PrimaryLoanPurpose);
                sqlCommand.Parameters.AddWithValue(@"LoanAmount", loan.LoanAmount);
                sqlCommand.Parameters.AddWithValue(@"LoanTerm", loan.LoanTerm);
                sqlCommand.Parameters.AddWithValue(@"LoanPaymentMethod", loan.LoanPaymentMethod);
               
                sqlCommand.ExecuteNonQuery();

                Session["currentuser"] = currentUser;

                List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;

                if (allUsersList == null)
                {
                    allUsersList = new List<UserInfo>();
                }

                allUsersList.Add(currentUser);


                Application["AllUserList"] = allUsersList;
                

            }
            if (confirmValidation.Checked && (!goBack.Text.Equals("Go Back")))
            {
                string redirectScript = " window.location.href = 'sign_In.aspx';";
                System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "alert(' Thank you " + " " + currentUser.FirstName + " " + "  " + currentUser.LastName + " for Creating Account with us. You can now Sign In');" + redirectScript, true);

                String msgTo = currentUser.EmailAddress1;
                String msgSubject = "Thank you for your interest in AmericanAutoLoans.com";
                String msgBody = "Dear New User " + " "  + currentUser.EmailAddress1 + "<br/>" + 
                    "Thank you for creating a AmericanAutoLoans.com account." +
                    "Our staff will review your application within the next 24 hours. "+
                    "You will receive an email notification with few more details. <br/>" +
                    "Our support staff is available 24 hours a day to answer questions regarding your loan application. <br/> <br/>" +
                    "Thank You. <br/>" +
                    "AmericanAutoLoans.com Team";
                MailMessage mailObj = new MailMessage();
                mailObj.Body = msgBody;
                mailObj.From = new MailAddress("UhclEmailServer@gmail.com", "UHCL_Email_Services");
                mailObj.To.Add(new MailAddress(msgTo));
                mailObj.Subject = msgSubject;
                mailObj.IsBodyHtml = true;
                SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
                //SMTPClient.Host = "smtp.gmail.com";
                //SMTPClient.Credentials = new NetworkCredential("uhclhawksservice@gmail.com", "AaChinnu1");
                //SMTPClient.Port = 587;
                //SMTPClient.EnableSsl = true;
                try
                { SMTPClient.Send(mailObj); }
                catch (Exception ex)
                { ex.ToString(); }
                //Response.Redirect("MyAccount.aspx");
            }

            if (goBack.Text.Equals("Go Back"))
            {
                Response.Redirect("MyAccount.aspx");
            }
        }
    }
}
