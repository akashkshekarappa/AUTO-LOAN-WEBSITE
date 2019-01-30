using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WADProject.App_Code;

namespace WADProject
{
    public partial class Loan_App : System.Web.UI.Page
    {
        public Boolean isUsed = false;
        public Boolean isExists = false;
        protected void Page_Load(object sender, EventArgs e)
        {

            //var currentUser = Session["currentuser"] as UserInfo;

            //var exists = Session["isExists"];
            //if (exists != null)
            if (!IsPostBack)
            {

            isUsed = Request.QueryString["isEditPersonal"] == "1";
            if (isUsed)
            {
                List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;

                var user = Session["isEditPersonal"] as UserInfo;
                var sign_InUser = Session["signInUser"];

                if (user != null)
                {
                    firstName.Text = user.FirstName;
                    middleInitials.Text = user.MiddleInitials;
                    lastName.Text = user.LastName;
                    emailAddress1.Text = user.EmailAddress1;
                    emailAddress2.Text = user.EmailAddress2;
                    homeStreetAddress.Text = user.HomeStreetAddress;
                    homeAptNo.Text = user.HomeAptNo;
                    homeCity.Text = user.HomeCity;
                    homeState.Text = user.HomeState;
                    homeZip.Text = user.HomeZip;
                    homePhone.Text = user.HomePhone;

                    timeAtCurrentAddressYears.Text = user.TimeAtCurrentAddressYears;
                    timeAtCurrentAddressMonths.Text = user.TimeAtCurrentAddressMonths;
                    housingStatus.Text = user.HousingStatus;

                    socialSecurity.Text = user.SocialSecurity;
                    dateOfBirth.Text = user.DateOfBirth;

                    driversLicenseLastFourDigits.Text = user.DriversLicenseLastFourDigits;

                }

                else if (allUsersList != null)
                {
                    foreach (var aUser in allUsersList)
                    {
                        if (aUser.EmailAddress1.Equals(sign_InUser))
                        {


                            firstName.Text = aUser.FirstName;
                            middleInitials.Text = aUser.MiddleInitials;
                            lastName.Text = aUser.LastName;
                            emailAddress1.Text = aUser.EmailAddress1;
                            emailAddress2.Text = aUser.EmailAddress2;
                            homeStreetAddress.Text = aUser.HomeStreetAddress;
                            homeAptNo.Text = aUser.HomeAptNo;
                            homeCity.Text = aUser.HomeCity;
                            homeState.Text = aUser.HomeState;
                            homeZip.Text = aUser.HomeZip;
                            homePhone.Text = aUser.HomePhone;

                            timeAtCurrentAddressYears.Text = aUser.TimeAtCurrentAddressYears;
                            timeAtCurrentAddressMonths.Text = aUser.TimeAtCurrentAddressMonths;
                            housingStatus.Text = aUser.HousingStatus;

                            socialSecurity.Text = aUser.SocialSecurity;
                            dateOfBirth.Text = aUser.DateOfBirth;

                            driversLicenseLastFourDigits.Text = aUser.DriversLicenseLastFourDigits;

                        }
                    }

                }
                    grayOut.Enabled = false;

                    //Application["AccountID"] = emailAddress1.Text;
                    Request.ContentType = "text/css";

                    var isEdit = Session["editPersonal"];
                    if (isEdit != null)
                    {
                        grayOut.Enabled = true;
                        firstName.Enabled = false;
                        middleInitials.Enabled = false;
                        lastName.Enabled = false;
                        socialSecurity.Enabled = false;
                        dateOfBirth.Enabled = false;
                        driversLicenseLastFourDigits.Enabled = false;
                        saveInfo.Enabled = false;
                        enterLoanInfo.Enabled = false;

                    }

                }




            
            }
        }

        protected void enter_Loan_info(object sender, EventArgs e)
        {
            //var currentUser = Session["currentuser"] as UserInfo;

            //var exists = Session["isExists"];
            //if (exists != null)
            //{

            //    firstName.Text = currentUser.FirstName;
            //    middleInitials.Text = currentUser.MiddleInitials;
            //    lastName.Text = currentUser.LastName;
            //    emailAddress1.Text = currentUser.EmailAddress1;
            //    emailAddress2.Text = currentUser.EmailAddress2;
            //    homeStreetAddress.Text = currentUser.HomeStreetAddress;
            //    homeAptNo.Text = currentUser.HomeAptNo;
            //    homeCity.Text = currentUser.HomeCity;
            //    homeState.Text = currentUser.HomeState;
            //    homeZip.Text = currentUser.HomeZip;
            //    homePhone.Text = currentUser.HomePhone;

            //    timeAtCurrentAddressYears.Text = currentUser.TimeAtCurrentAddressYears;
            //    timeAtCurrentAddressMonths.Text = currentUser.TimeAtCurrentAddressMonths;
            //    housingStatus.Text = currentUser.HousingStatus;

            //    socialSecurity.Text = currentUser.SocialSecurity;
            //    dateOfBirth.Text = currentUser.DateOfBirth;

            //    driversLicenseLastFourDigits.Text = currentUser.DriversLicenseLastFourDigits;


            //}
            //else
            //{
            //    UserInfo user = new UserInfo();

            //    user.FirstName = firstName.Text.ToString();
            //    user.MiddleInitials = middleInitials.Text.ToString();
            //    user.LastName = lastName.Text;
            //    user.EmailAddress1 = emailAddress1.Text;
            //    user.EmailAddress2 = emailAddress2.Text;
            //    user.HomeStreetAddress = homeStreetAddress.Text;
            //    user.HomeAptNo = homeAptNo.Text;
            //    user.HomeCity = homeCity.Text;
            //    user.HomeState = homeState.Text;
            //    user.HomeZip = homeZip.Text;
            //    user.HomePhone = homePhone.Text;



            //    user.TimeAtCurrentAddressYears = timeAtCurrentAddressYears.Text;
            //    user.TimeAtCurrentAddressMonths = timeAtCurrentAddressMonths.Text;
            //    user.HousingStatus = housingStatus.Text;

            //    user.SocialSecurity = socialSecurity.Text;
            //    user.DateOfBirth = dateOfBirth.Text;

            //    user.DriversLicenseLastFourDigits = driversLicenseLastFourDigits.Text;



            //    Session["currentuser"] = user;


            //}



            var currentUser = Session["currentuser"] as UserInfo;

            var exists = Session["isExists"];
            if (exists != null)
            {

                firstName.Text = currentUser.FirstName;
                middleInitials.Text = currentUser.MiddleInitials;
                lastName.Text = currentUser.LastName;
                emailAddress1.Text = currentUser.EmailAddress1;
                emailAddress2.Text = currentUser.EmailAddress2;
                homeStreetAddress.Text = currentUser.HomeStreetAddress;
                homeAptNo.Text = currentUser.HomeAptNo;
                homeCity.Text = currentUser.HomeCity;
                homeState.Text = currentUser.HomeState;
                homeZip.Text = currentUser.HomeZip;
                homePhone.Text = currentUser.HomePhone;

                timeAtCurrentAddressYears.Text = currentUser.TimeAtCurrentAddressYears;
                timeAtCurrentAddressMonths.Text = currentUser.TimeAtCurrentAddressMonths;
                housingStatus.Text = currentUser.HousingStatus;

                socialSecurity.Text = currentUser.SocialSecurity;
                dateOfBirth.Text = currentUser.DateOfBirth;

                driversLicenseLastFourDigits.Text = currentUser.DriversLicenseLastFourDigits;






            }
            else
            {
                UserInfo user = new UserInfo();
              

                

                user.FirstName = firstName.Text.ToString();
                user.MiddleInitials = middleInitials.Text.ToString();
                user.LastName = lastName.Text;
                user.EmailAddress1 = emailAddress1.Text;
                user.EmailAddress2 = emailAddress2.Text;
                user.HomeStreetAddress = homeStreetAddress.Text;
                user.HomeAptNo = homeAptNo.Text;
                user.HomeCity = homeCity.Text;
                user.HomeState = homeState.Text;
                user.HomeZip = homeZip.Text;
                user.HomePhone = homePhone.Text;



                user.TimeAtCurrentAddressYears = timeAtCurrentAddressYears.Text;
                user.TimeAtCurrentAddressMonths = timeAtCurrentAddressMonths.Text;
                user.HousingStatus = housingStatus.Text;

                user.SocialSecurity = socialSecurity.Text;
                user.DateOfBirth = dateOfBirth.Text;

                user.DriversLicenseLastFourDigits = driversLicenseLastFourDigits.Text;
                user.PassWord = passWord.Text;

             

                        Session["currentuser"] = user;

                        

                
            

        }
               


            Response.Redirect("enter_LoanInfo.aspx");

        }


        protected void updateGoBack(object sender, EventArgs e)
        {

            var user = Session["currentuser"] as UserInfo;

            if(user != null)
            {

            
            user.FirstName = firstName.Text.ToString();
                user.MiddleInitials = middleInitials.Text.ToString();
                user.LastName = lastName.Text;
                user.EmailAddress1 = emailAddress1.Text;
                user.EmailAddress2 = emailAddress2.Text;
                user.HomeStreetAddress = homeStreetAddress.Text;
                user.HomeAptNo = homeAptNo.Text;
                user.HomeCity = homeCity.Text;
                user.HomeState = homeState.Text;
                user.HomeZip = homeZip.Text;
                user.HomePhone = homePhone.Text;



                user.TimeAtCurrentAddressYears = timeAtCurrentAddressYears.Text;
                user.TimeAtCurrentAddressMonths = timeAtCurrentAddressMonths.Text;
                user.HousingStatus = housingStatus.Text;

                user.SocialSecurity = socialSecurity.Text;
                user.DateOfBirth = dateOfBirth.Text;

                user.DriversLicenseLastFourDigits = driversLicenseLastFourDigits.Text;
            user.PassWord = passWord.Text;
}

            string conStr = "server=dcm.uhcl.edu;database=c432018sp02kurvashekarappaa;uid=	kurvashekarappaa;pwd=1650265";

            
            string updateStatement = "UPDATE KurvashekarappaA_WADsp18_PersonalInfo SET emailAddress1 = @EmailAddress1, " +
                " emailAddress2 = @EmailAddress2,middleInitials = @MiddleInitials, " +
                "homeStreetAddress = @HomeStreetAddress, homeAptNo = @HomeAptNo, homeCity = @HomeCity, homeState =  @HomeState," +
                " homeZip = @HomeZip, homePhone = @HomePhone, timeAtCurrentAddressYears = @TimeAtCurrentAddressYears," +
                "timeAtCurrentAddressMonths = @TimeAtCurrentAddressMonths, HousingStatus = @HousingStatus, socialSecurity =@SocialSecurity," +
                "DateOfBirth = @DateOfBirth,DriversLicenseLastFourDigits =@DriversLicenseLastFourDigits, passWord = @PassWord" +
                " where FirstName = @FirstName and LastName = @LastName ";

            SqlConnection connectionToServer = new SqlConnection(conStr);

            SqlCommand updateCommand = new SqlCommand(updateStatement, connectionToServer);

            connectionToServer.Open();


            updateCommand.Parameters.AddWithValue(@"EmailAddress1", emailAddress1.Text);
            updateCommand.Parameters.AddWithValue(@"EmailAddress2", emailAddress2.Text);
            updateCommand.Parameters.AddWithValue(@"FirstName", firstName.Text);
            updateCommand.Parameters.AddWithValue(@"MiddleInitials", middleInitials.Text);
            updateCommand.Parameters.AddWithValue(@"LastName", lastName.Text);
            updateCommand.Parameters.AddWithValue(@"HomeStreetAddress", homeStreetAddress.Text);
            updateCommand.Parameters.AddWithValue(@"HomeAptNo", homeAptNo.Text);
            updateCommand.Parameters.AddWithValue(@"HomeCity", homeCity.Text);
            updateCommand.Parameters.AddWithValue(@"HomeState", homeState.Text);
            updateCommand.Parameters.AddWithValue(@"HomeZip", homeZip.Text);
            updateCommand.Parameters.AddWithValue(@"HomePhone", homePhone.Text);
            updateCommand.Parameters.AddWithValue(@"TimeAtCurrentAddressYears", timeAtCurrentAddressYears.Text);
            updateCommand.Parameters.AddWithValue(@"TimeAtCurrentAddressMonths", timeAtCurrentAddressMonths.Text);
            updateCommand.Parameters.AddWithValue(@"HousingStatus", housingStatus.Text);
            updateCommand.Parameters.AddWithValue(@"SocialSecurity", socialSecurity.Text);
            updateCommand.Parameters.AddWithValue(@"DateOfBirth", dateOfBirth.Text);
            updateCommand.Parameters.AddWithValue(@"DriversLicenseLastFourDigits", driversLicenseLastFourDigits.Text);
            updateCommand.Parameters.AddWithValue(@"PassWord", passWord.Text);

            //int rows = updateCommand.ExecuteNonQuery();
            updateCommand.ExecuteNonQuery();

            Session["currentuser"] = user;
                Response.Redirect("MyAccount.aspx");

        }
    }
}