<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="WADProject.MyAccount" %>

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

            <div>
            <nav class="navbar navbar-inverse text-left" style="color: white;"><label>My Account</label>
                <label  id="SignInName" runat="server" style="float:right;color:yellow"></label>
            </nav>
            </div>  

               <div>
                <table class="table table-bordered table-responsive table-hover">
                    <tr>
                        <td class="col-sm-4"><label>Account ID(Email Address)</label>
                        </td>
                        <td class="display col-sm-8"> <asp:Label ID="emailAddress1" runat="server" />
                        </td>
                    </tr>

                     <tr>
                        <td><label>Account Application Type</label>
                        </td>
                        <td class="display"> <asp:Label ID="applicationType" runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td><label>Primary Loan Purpose</label>
                        </td>
                        <td class="display"> <asp:Label ID="primaryLoanPurpose" runat="server" />
                        </td>
                    </tr>

                    
                     <tr>
                        <td><label>Loan Amount</label>
                        </td>
                        <td class="display">  <asp:Label ID="loanAmount" runat="server" /> 
                        </td>
                     </tr>

                    <tr>
                        <td><label>Loan Term (Months)</label>
                        </td>
                        <td class="display">  <asp:Label ID="loanTerm" runat="server" />
                        </td>
                     </tr>

                    <tr>
                        <td><label>Payment Method</label>
                        </td>
                        <td class="display">  <asp:Label ID="loanPaymentMethod" runat="server" />
                        </td>
                     </tr>
                 </table>
              </div>

            <div class="col-sm-12">
                 <div class="col-sm-4">
                    <asp:LinkButton  Text="Edit Personal Details" CssClass="btn btn-block black-background white " runat="server" OnClick="personalInfo" ID="editPersonalInfo"></asp:LinkButton>
                 </div>
                <div class="col-sm-4">
                    <asp:LinkButton  Text="View Account Details" CssClass="btn btn-block black-background white " runat="server" OnClick="loanInfo" ></asp:LinkButton>
                 </div>
                <div class="col-sm-4">
                    <asp:LinkButton  Text="Logout" CssClass="btn btn-block black-background white " runat="server" OnClick="OnConfirm" OnClientClick="Confirm()" ></asp:LinkButton>
                 </div>
            </div>

             
                  
                    
    
    </form>
</body>
</html>
