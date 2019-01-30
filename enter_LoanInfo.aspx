<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enter_LoanInfo.aspx.cs" Inherits="WADProject.enter_LoanInfo" %>


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
                        <img id="imgright" style="float: right; width: 250px; height: 125px; margin-top: -125px;" src="images/img3.jpg" alt="Alternate Text" />
                    </header>
                </div>
            </div>
            <nav class="navbar navbar-inverse text-center" style="color: white;">Loan Information</nav>

            <div>
                <table class="table table-bordered table-responsive table-hover">
                    <tr>
                        <th colspan="2">Basic Requirements
                        </th>
                    </tr>
                    <tr>
                        <td>To Qualify
                        </td>
                        <td>You have Good Credit including sufficient income and assets to support your existing debt obligations and requested loan amount.
                        </td>
                    </tr>

                    <tr>
                        <td>To Apply, You need to
                        </td>
                        <td>

                            <ul>
                                <li>Acknowledge receipt of our Statement on the Use of Electronic Records (click to review)</li>
                                <li>Agree to receive electronic records</li>
                                <li>Agree to use electronic signatures to sign your loan agreement</li>
                            </ul>

                        </td>
                    </tr>
                    <tr>
                        <td>If Approved
                        </td>
                        <td>Prior to receiving loan proceeds, you must have a valid Visa or MasterCard credit card (for verification purposes only, no charges will be applied).
                        </td>
                    </tr>

                    <tr>
                        <td>Use of Loan Proceeds
                        </td>
                        <td>Loans are only made to individuals, not to businesses. Loan proceeds must be used for the loan purpose selected on the application.
                        </td>
                    </tr>

                    <tr>
                        <td style="border: 0px" class="required req">
                            <label>Required Field</label>
                        </td>
                        <%--<td style="float: right; border: 0px">

                            <asp:Button id="grayOut" class="btn btn-default" Text="Edit"  runat="server"/>

                        </td>--%>
                    </tr>

                    <tr>
                        <td style="border: 0px">
                            <label class="required">Application Type</label>
                            <br />
                            <asp:DropDownList  class="btn black-background white" ID="applicationType" runat="server">
                                <asp:ListItem Enabled="true" Text="Individual Application" Value="Individual Application"></asp:ListItem>
                                <asp:ListItem Text="Joint Application" Value="Joint Application"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="border: 0px">By selecting 'Individual Application', you are applying for individual credit in your name and are relying on your income and assests and not the income or assests of another person as the basis for repayment of the credit request
                        </td>
                    </tr>

                    <tr>
                        <td style="border: 0px">
                            <label class="required">Primary Loan Purpose</label>
                            <br />

                            <asp:DropDownList class="btn black-background white" ID="primaryLoanPurpose" runat="server">
                                <asp:ListItem Text="New Auto Purchase" Value="New Auto Purchase"></asp:ListItem>
                                <asp:ListItem Text="Used Auto Purchase From Dealer" Value="Used Auto Purchase From Dealer"></asp:ListItem>
                                <asp:ListItem Text="Auto Lease Buyout" Value="Auto Lease Buyout"></asp:ListItem>
                                <asp:ListItem Text="Auto Loan Refinance" Value="Auto Loan Refinance"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="border: 0px">If your application is approved, your credit profile will determine weather your loan will be unsecured or secured
                        </td>
                    </tr>

                </table>

            </div>

            <div class="col-sm-3">
                <label class="required">Zip Code</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="homeZip"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Zip." ControlToValidate="homeZip" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" /> 

                <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
                  runat="server" ErrorMessage="Please Enter Valid Zip" ControlToValidate="homeZip"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$">
                  </asp:RegularExpressionValidator>

                 <%--^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$--%> 
            </div>

            <div class="col-sm-3">
                <label class="required">Loan Amount</label>
                <asp:TextBox  runat="server" CssClass="form-control" ID="loanAmount"></asp:TextBox>
                
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Loan Amount." ControlToValidate="loanAmount" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator"
                  runat="server" ErrorMessage="Please Enter Valid Loan Amount." ControlToValidate="loanAmount"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^\$?[0-9][0-9\,]*(\.\d{1,2})?$|^\$?[\.]([\d][\d]?)$">
                  </asp:RegularExpressionValidator>
               
            </div>

            <div class="col-sm-3">
                <label class="required">Loan Term (Months)</label>
                <asp:TextBox runat="server" ID="loanTerm" CssClass="form-control"></asp:TextBox>

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Month." ControlToValidate="loanTerm" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator10"
                  runat="server" ErrorMessage="Please Enter Valid Month" ControlToValidate="loanTerm"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^(0?[1-9]|1[012])$">
                  </asp:RegularExpressionValidator>
            </div>

            <div class="col-sm-3">

                <label class="required">Payment Method</label>
                <br />

                <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" CssClass="rbl" ID="loanPaymentMethod">
                    <asp:ListItem Value="AutoPay" Selected="True">AutoPay</asp:ListItem>
                    <asp:ListItem Value="Invoice">Invoice</asp:ListItem>
                </asp:RadioButtonList>

            </div>

            <div class="col-sm-12">
            <div class="col-lg-8">

                <div class="col-lg-12">
                    <asp:CheckBox class="checkbox" ID="confirmValidation" Text="I confirm that the information given in this form is true, complete and accurate." runat="server" />
                </div>
            </div>

            <div class="col-sm-4">
                <asp:Button class="btn navbar-btn" OnClientClick="return Check();" OnClick="MyAccount" AutoPostBack="True" Text="Submit Loan Application >>>" runat="server" ID="goBack" />
            </div>

            </div>

        </form>

    </body>

    </html>