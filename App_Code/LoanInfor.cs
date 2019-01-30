using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WADProject.App_Code
{
    public class LoanInfor
    {
        String applicationType;
        String primaryLoanPurpose;
        string loanAmount;
        string loanTerm;
        string loanPaymentMethod; /* 0 =Auto Pay, 1 = Invoice */
        public String ApplicationType
        {
            get { return applicationType; } 
            set { applicationType = value; }
        }

        public String PrimaryLoanPurpose
        {
            get { return primaryLoanPurpose; } /*ADD THE PROPERTIES AS SHOWN*/
            set { primaryLoanPurpose = value; } /*FOR THE REMAINING FIELDS.*/
        }

        public string LoanAmount
        {
            get { return loanAmount; }
            set { loanAmount = value; }
        }

        public string LoanTerm
        {
            get { return loanTerm; }
            set { loanTerm = value; }
        }

        public string LoanPaymentMethod
        {
            get { return loanPaymentMethod; }
            set { loanPaymentMethod = value; }
        }

    }
}