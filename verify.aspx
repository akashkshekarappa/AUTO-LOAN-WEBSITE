<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verify.aspx.cs" Inherits="WADProject.views.verify" %>

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
        <form id="form1" runat="server">
            <div id="header" class="jumbotron">
                <div class="container text-left">
                    <header>
                        <h1>AAL AmericanAutoLoans.com </h1>
                        <img id="imgright" style="float:right;    width: 250px;height: 125px;margin-top: -125px;" src="images/img3.jpg" alt="Alternate Text" />
                    </header>
                </div>
            </div>
            <nav class="navbar navbar-inverse text-center" style="color:white;">Verify Account Existence</nav>
            <div class="col-lg-12 required req">
                <label>Required Field</label>
            </div>
            <br />
              <div >
        <asp:ValidationSummary runat="server" ID="ValidationSummary1" 
            DisplayMode="BulletList"
            ShowMessageBox="False" ShowSummary="True" CssClass="alert alert-danger" />

            <div class="col-sm-6 required" ">
                <label>Enter Your Email Address</label>
                <asp:TextBox  runat="server" CssClass="form-control required"  ID="EmailAddress1" AutoPostBack="true"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                    runat="server"
                    ErrorMessage="Please enter Email." ControlToValidate="EmailAddress1"
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />

                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Please Enter Valid Email ID" ControlToValidate="EmailAddress1"
                  CssClass="alert-text"
                  ForeColor="Red"
                  ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
                </asp:RegularExpressionValidator>
            </div>

         <div class="col-sm-6 ">
            <label style="color:red ">Do you already have an account with us?</label><br />
            <asp:LinkButton ID="CogLinkButton"  Text="Check Account Existence " OnClick="Loan_App " CssClass="btn btn-block black-background white " runat="server" ></asp:LinkButton>
        </div>
    </div>

</form>
</body>
</html>