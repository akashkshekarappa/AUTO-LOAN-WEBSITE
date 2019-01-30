using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WADProject.App_Code
{
    public class UserInfo
    {
        String firstName;
        String middleInitials;
        String lastName;
        String emailAddress1;
        String emailAddress2;
        String homeStreetAddress;
        String homeAptNo;
        String homeCity;
        String homeState;
        String homeZip;
        String homePhone;

        String timeAtCurrentAddressYears;
        String timeAtCurrentAddressMonths;
        String housingStatus; /*0 = rent, 1 = own */

        String socialSecurity;
        String dateOfBirth;
        String driversLicenseLastFourDigits;
        String passWord;

        LoanInfor loanInfo;
        public String FirstName
        {
            get { return firstName; } 
            set { firstName = value; } 
        }

        public String MiddleInitials
        {
            get { return middleInitials; }
            set { middleInitials = value; }
        }

        public String LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }

        public String EmailAddress1
        {
            get { return emailAddress1; }
            set { emailAddress1 = value; }
        }

        public String EmailAddress2
        {
            get { return emailAddress2; }
            set { emailAddress2 = value; }
        }

        public String HomeStreetAddress
        {
            get { return homeStreetAddress; }
            set { homeStreetAddress = value; }
        }

        public String HomeAptNo
        {
            get { return homeAptNo; }
            set { homeAptNo = value; }
        }

        public String HomeCity
        {
            get { return homeCity; }
            set { homeCity = value; }
        }

        public String HomeState
        {
            get { return homeState; }
            set { homeState = value; }
        }

        public String HomeZip
        {
            get { return homeZip; }
            set { homeZip = value; }
        }

        public String HomePhone
        {
            get { return homePhone; }
            set { homePhone = value; }
        }

        public String TimeAtCurrentAddressYears
        {
            get { return timeAtCurrentAddressYears; }
            set { timeAtCurrentAddressYears = value; }
        }

        public String TimeAtCurrentAddressMonths
        {
            get { return timeAtCurrentAddressMonths; }
            set { timeAtCurrentAddressMonths = value; }
        }

        public String HousingStatus
        {
            get { return housingStatus; }
            set { housingStatus = value; }
        }

        public LoanInfor LoanInfo
        {
            get { return loanInfo; }
            set { loanInfo = value; }
        }
        public String SocialSecurity
        {
            get { return socialSecurity; }
            set { socialSecurity = value; }
        }

        public String DateOfBirth
        {
            get { return dateOfBirth; }
            set { dateOfBirth = value; }
        }

        public String DriversLicenseLastFourDigits
        {
            get { return driversLicenseLastFourDigits; }
            set { driversLicenseLastFourDigits = value; }
        }

        public String PassWord
        {
            get { return passWord; }
            set { passWord = value; }
        }
    }
}