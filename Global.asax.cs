using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using WADProject.App_Code;


namespace WADProject
{
    public class Global : System.Web.HttpApplication
    {
       
        protected void Application_Start(object sender, EventArgs e)
        {
            List<UserInfo> allUsersList = new List<UserInfo>();



            string conStr = "server=dcm.uhcl.edu;database=c432018sp02kurvashekarappaa;uid=kurvashekarappaa;pwd=1650265";


            SqlConnection connectionToServer = new SqlConnection(conStr);

            string theStatement = "SELECT * from KurvashekarappaA_WADsp18_PersonalInfo";

            string loanStatement = "SELECT * from KurvashekarappaA_WADsp18_LoanInfo";

            SqlCommand sqlCommand = new SqlCommand(theStatement, connectionToServer);

            SqlCommand loanCommand = new SqlCommand(loanStatement, connectionToServer);

            try
            {
                connectionToServer.Open();
                SqlDataReader sqlReader = sqlCommand.ExecuteReader();
                while (sqlReader.Read())
                {
                    UserInfo user = new UserInfo();
                  
                    // get the results of each column
                   
                    user.FirstName = (string)sqlReader["FirstName"];
                    user.MiddleInitials = (string)sqlReader["MiddleInitials"];
                    user.LastName = (string)sqlReader["LastName"];
                    user.EmailAddress1 = (string)sqlReader["EmailAddress1"];
                    user.EmailAddress2 = (string)sqlReader["EmailAddress2"];
                    user.HomeStreetAddress = (string)sqlReader["HomeStreetAddress"];
                    user.HomeAptNo = (string)sqlReader["HomeAptNo"];
                    user.HomeCity = (string)sqlReader["HomeCity"];
                    user.HomeState = (string)sqlReader["HomeState"];
                    user.HomeZip = (string)sqlReader["HomeZip"];
                    user.HomePhone = (string)sqlReader["HomePhone"];



                    user.TimeAtCurrentAddressYears = (string)sqlReader["TimeAtCurrentAddressYears"];
                    user.TimeAtCurrentAddressMonths = (string)sqlReader["TimeAtCurrentAddressMonths"];
                    user.HousingStatus = (string)sqlReader["HousingStatus"];

                    user.SocialSecurity = (string)sqlReader["SocialSecurity"];
                    user.DateOfBirth = (string)sqlReader["DateOfBirth"];

                    user.DriversLicenseLastFourDigits = (string)sqlReader["DriversLicenseLastFourDigits"];
                    user.PassWord = (string)sqlReader["PassWord"];
                  

                    allUsersList.Add(user);
                }
            }
           
            finally { connectionToServer.Close(); }

           
            try
            {
                connectionToServer.Open();
                SqlDataReader loanReader = loanCommand.ExecuteReader();
                while (loanReader.Read())
                {
                    LoanInfor loan = new LoanInfor();
                    string email= (string)loanReader["EmailAddress1"];
                    loan.LoanAmount = (string)loanReader["LoanAmount"];
                    loan.LoanTerm = (string)loanReader["LoanTerm"];
                    loan.LoanPaymentMethod = (string)loanReader["LoanPaymentMethod"];
                    loan.PrimaryLoanPurpose = (string)loanReader["PrimaryLoanPurpose"];
                    loan.ApplicationType = (string)loanReader["LoanType"];
                    foreach(var user in allUsersList)
                    {
                        if (user.EmailAddress1.Equals(email))
                        {
                            user.LoanInfo = loan;
                        }
                    }


                }
            }

            finally { connectionToServer.Close(); }

            Application["AllUserList"] = allUsersList;

            ///List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;

            // Session["currentuser"] = aUser;  //search for a User (aUser) in the allUsersList and if found put that into the Session.
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}