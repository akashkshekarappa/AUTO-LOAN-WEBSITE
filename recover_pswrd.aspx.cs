using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WADProject.App_Code;

namespace WADProject
{
    public partial class recover_pswrd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RecoverPassword(object sender, EventArgs e)
        {

            List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;

            if (allUsersList != null)
            {
                foreach (var aUser in allUsersList)
                {
                    if (aUser.EmailAddress1.Equals(email.Text))
                    {
                        String msgTo = email.Text;
                        String msgSubject = "We have recovered your password!";
                        String msgBody = "Dear New User " + " " + email.Text + "<br/>" +
                            "You are receiving this email because a you requested to recover your password. <br/><br/>" +
                            "Your current password is : " + " " + aUser.PassWord + "<br/><br/>" +
                            "Thank You.<br/>" +
                            "AmericanAutoLoans.com Team";
                        MailMessage mailObj = new MailMessage();
                        mailObj.Body = msgBody;
                        mailObj.From = new MailAddress("UhclEmailServer@gmail.com", "UHCL_Email_Services");
                        mailObj.To.Add(new MailAddress(msgTo));
                        mailObj.Subject = msgSubject;
                        mailObj.IsBodyHtml = true;
                        SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
                        //SMTPClient.Host = "smtp.gmail.com";
                        //SMTPClient.Credentials = new NetworkCredential("uhclservice@gmail.com", "Aa@123456");
                        //SMTPClient.Port = 587;
                        //SMTPClient.EnableSsl = true;
                        try
                        { SMTPClient.Send(mailObj); }
                        catch (Exception ex)
                        { ex.ToString(); }

                        break;

                    }
                }
            }

        }

    }
}