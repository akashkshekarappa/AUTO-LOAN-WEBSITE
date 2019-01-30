<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recover_pswrd.aspx.cs" Inherits="WADProject.recover_pswrd" %>

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
            <nav class="navbar navbar-inverse text-center" style="color: white;">Recover Password</nav>
            <br />
            <div >
            <asp:ValidationSummary runat="server" ID="ValidationSummary1" 
            DisplayMode="BulletList"
            ShowMessageBox="False" ShowSummary="True" CssClass="alert alert-danger" />

    <div class="col-sm-12">
        <div class="col-sm-3 required"><label>Enter Account Email Address</label></div>
        <div class="col-sm-9"><asp:TextBox  runat="server" CssClass="form-control" TextMode="Email" type="email" ID="email" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                    runat="server"
                    ErrorMessage="Please enter Email." ControlToValidate="email"
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />
        </div>
    </div>
    
     <div class="col-sm-12">
        <br/>
        <div class="col-sm-6 ">
            <asp:LinkButton ID="CogLinkButton"  Text="Cancel"  CssClass="btn btn-block black-background white " runat="server" PostBackUrl="~/default.aspx" CausesValidation="false"> </asp:LinkButton>
        </div>

        <div class="col-sm-6 ">
            <asp:LinkButton ID="LinkButton1"  OnClick="RecoverPassword" Text="Recover Password"  CssClass="btn btn-block black-background white" runat="server" OnClientClick="javascript:alert('An email with password information has been sent to the email address in file')"></asp:LinkButton>
        </div>
    </div>
 </div>
    </form>
</body>
</html>
