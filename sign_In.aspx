<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_In.aspx.cs" Inherits="WADProject.sign_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/StyleSheet1.css" />
        <script src="scripts/JavaScript.js" type="text/javascript"></script>
        <title></title>
    </head>

    <body onload="loadDoc()">
        <form id="form2" runat="server">
            <div id="header" class="jumbotron">
                <div class="container text-left">
                    <header>
                        <h1>AAL AmericanAutoLoans.com </h1>
                        <img id="imgright" style="float: right; width: 250px; height: 125px; margin-top: -125px;" src="images/img3.jpg" alt="Alternate Text" />
                    </header>
                </div>
            </div>
            <nav class="navbar navbar-inverse text-center" style="color: white;">Sign In to my account</nav>
    <div >
        <asp:ValidationSummary runat="server" ID="ValidationSummary1" 
            DisplayMode="BulletList"
            ShowMessageBox="False" ShowSummary="True" CssClass="alert alert-danger" />
   
    <div class="col-sm-12">
        <div class="col-sm-6 required">
           <label>Enter Account Email Address</label>
           <asp:TextBox  runat="server" ID="emailAddress1" CssClass="form-control required text-danger" TextMode="Email" type="email" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                    runat="server"
                    ErrorMessage="Please enter Email." ControlToValidate="emailAddress1"
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Please Enter Valid Email ID" ControlToValidate="emailAddress1"
                  CssClass="alert-text"
                  ForeColor="Red"
                  ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
                  </asp:RegularExpressionValidator>
        </div>
       

        <div class="col-sm-6 required">
           <label>Enter Account Password</label>
           <asp:TextBox  runat="server" ID="passWord" CssClass="form-control required text-danger" TextMode="Password" type="password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
                    runat="server"
                    ErrorMessage="Please enter password." ControlToValidate="passWord"
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
              runat="server" ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one 
                                alphabetic character, and must not contain special characters" ControlToValidate="passWord"
                  CssClass="alert-text"
                  ForeColor="Red"
                  ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$">
                  </asp:RegularExpressionValidator>
        </div>
         </div>
       
   

    <div class="col-sm-12">
        <div class="col-sm-6">
            <asp:HyperLink runat="server" CssClass="hyperlink text-justify" NavigateUrl="./recover_pswrd.aspx"><span>Forgot Your Password?</span></asp:HyperLink>
        </div>

        <div class="col-sm-6">
            <asp:HyperLink runat="server" CssClass="hyperlink text-justify"  NavigateUrl="./Loan_App.aspx"><span>I do not have an account</span> </asp:HyperLink>
        </div>
    </div>
            
    <div class="col-sm-12">
        <br/>
        <div class="col-sm-6 ">
            <asp:LinkButton ID="CogLinkButton"  Text="Cancel"  CssClass="btn btn-block black-background white " runat="server" PostBackUrl="~/default.aspx" CausesValidation="false"> </asp:LinkButton>
        </div>

        <div class="col-sm-6 ">
            <asp:LinkButton ID="signInName"  OnClick="SignIn" Text="Sign In"  CssClass="btn btn-block black-background white" runat="server"></asp:LinkButton>
        </div>
    </div>
      
             </div>
            
    </form>
</body>
</html>
