<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loan_App.aspx.cs" Inherits="WADProject.Loan_App" %>

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
            <nav class="navbar navbar-inverse text-center" style="color:white;">Loan Application</nav>

             <div >
        <asp:ValidationSummary runat="server" ID="ValidationSummary1" 
            DisplayMode="BulletList"
            ShowMessageBox="False" ShowSummary="True" CssClass="alert alert-danger" />
   

            <div class="container-fluid text-justify col-sm-12">
                <h3 style="color:black">Important Information About Procedures for Opening a New Account</h3>
                <p>Federal law requires all financial institutions to obtain, verify, and record information that identifies each person who opens an account.
                    <b> What this means for you?</b> When you open an account, we will ask for your name, address, date of birth and other information that will allow us to identify you. We may also ask to see your driver's license or other identifying documents.</p>

            </div>
            <div class="col-sm-12 navbar" style="color:white; background-color:black">
                <nav>Your Personal Information</nav>
            </div>

            <div>

                <table class="table table-bordered table-responsive table-hover">
                    <tr>
                        <td style="border: 0px" class=" required req">
                            <label>Required Field</label>
                        </td>
                        <td style="float: right; border: 0px">

                            <asp:Button class="btn btn-default" id="grayOut" Text="Update and Go Back" OnClick="updateGoBack" runat="server" />

                        </td>
                    </tr>
                </table>
            </div>

            <div class="container-fluid">

                <div class="col-sm-12">
                    <div class="col-sm-4 required">

                        <label>First Name</label>
                        <asp:TextBox runat="server" id="firstName" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter First Name." ControlToValidate="firstName"
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator11"
                  runat="server" ErrorMessage="Please Enter Valid First Name" ControlToValidate="firstName"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">
                  </asp:RegularExpressionValidator>
                    </div>

                    <div class="col-sm-4">
                        <label>Middle Name</label>
                        <asp:TextBox runat="server" ID="middleInitials" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-sm-4 required">
                        <label>Last Name</label>
                        <asp:TextBox runat="server" ID="lastName" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Last Name." ControlToValidate="lastName"
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />

                          <asp:RegularExpressionValidator ID="RegularExpressionValidator12"
                  runat="server" ErrorMessage="Please Enter Valid Last Name" ControlToValidate="lastName"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">
                  </asp:RegularExpressionValidator>

                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="col-sm-6 required">
                        <label for="mail1">Email Address1</label>
                        <asp:TextBox ID="emailAddress1" runat="server" CssClass="form-control"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Primary Email Address." ControlToValidate="emailAddress1"
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                  runat="server" ErrorMessage="Please Enter Valid Email ID" ControlToValidate="emailAddress1"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
                  </asp:RegularExpressionValidator>
                    </div>

                    <div class="col-sm-6">
                        <label for="emailAddress2">Email Address2</label>
                        <asp:TextBox runat="server" ID="emailAddress2" CssClass="form-control"></asp:TextBox>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                  runat="server" ErrorMessage="Please Enter Valid Email ID" ControlToValidate="emailAddress2"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
                  </asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="col-sm-8 required">
                        <label for="address">Home Street Address (no P.O.boxes)</label>
                        <asp:TextBox runat="server" ID="homeStreetAddress" CssClass="form-control"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Home Street Address." ControlToValidate="homeStreetAddress"
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />
                    </div>

                    <div class="col-sm-4">
                        <label for="apt">Apt#(if applicable)</label>
                        <asp:TextBox runat="server" ID="homeAptNo" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="col-sm-4 required">
                        <label for="city">City</label>
                        <asp:TextBox runat="server" ID="homeCity" CssClass="form-control"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter City." ControlToValidate="homeCity" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                  runat="server" ErrorMessage="Please Enter Valid City" ControlToValidate="homeCity"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$">
                  </asp:RegularExpressionValidator>

                    </div>

                    <div class="col-sm-4 required">
                        <label for="state">State</label>
                        <asp:TextBox runat="server" ID="homeState" CssClass="form-control"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter State." ControlToValidate="homeState" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
                  runat="server" ErrorMessage="Please Enter Valid State" ControlToValidate="homeState"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^(A[LKSZRAEP]|C[AOT]|D[EC]|F[LM]|G[AU]|HI|I[ADLN]|K[SY]|LA|M[ADEHINOPST]|N[CDEHJMVY]|O[HKR]|P[ARW]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY])$">
                  </asp:RegularExpressionValidator>
                    </div>

                    <div class="col-sm-4 required">
                        <label for="homeZip">Zip</label>
                        <asp:TextBox runat="server" ID="homeZip" CssClass="form-control"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Zip." ControlToValidate="homeZip" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
                  runat="server" ErrorMessage="Please Enter Valid Zip" ControlToValidate="homeZip"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$">
                  </asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="col-sm-4">
                        <br />
                        <label class="required">Home Phone(with area code)</label>
                        <asp:TextBox runat="server" ID="homePhone" CssClass="form-control"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Home Phone Number." ControlToValidate="homePhone" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator6"
                  runat="server" ErrorMessage="Please Enter Valid Home Phone Number" ControlToValidate="homePhone"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$">
                  </asp:RegularExpressionValidator>
                    </div>

                    <div class="col-sm-4">
                        <label class="required">Time at current address</label>
                        <br />
                        <div class="col-sm-6">
                            <label>Years</label>  
                            <asp:TextBox runat="server" ID="timeAtCurrentAddressYears" CssClass="form-control"></asp:TextBox>

                             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Year." ControlToValidate="timeAtCurrentAddressYears" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator9"
                  runat="server" ErrorMessage="Please Enter Valid Year" ControlToValidate="timeAtCurrentAddressYears"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^(19|20)\d{2}$">
                  </asp:RegularExpressionValidator> 
                        </div>

                        <div class="col-sm-6">
                            <label for="time">Months</label>
                            <asp:TextBox runat="server"  ID="timeAtCurrentAddressMonths" CssClass="form-control"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Month." ControlToValidate="timeAtCurrentAddressMonths" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator10"
                  runat="server" ErrorMessage="Please Enter Valid Month" ControlToValidate="timeAtCurrentAddressMonths"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^(0?[1-9]|1[012])$">
                  </asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <br />

                        <label class="required">Housing Status</label>
                        <br />
                        <asp:RadioButtonList runat="server" ID="housingStatus" RepeatDirection="Horizontal" CssClass="rbl">
                            <asp:ListItem Value="Rent" Selected="True">Rent</asp:ListItem>
                            <asp:ListItem Value="Own">Own</asp:ListItem>
                        </asp:RadioButtonList>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Month." ControlToValidate="housingStatus" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />   

                    </div>
                </div>
                <br />
                <div class="col-sm-12">
                    <div class="col-sm-4 required">
                        <label>Social Security(9 digits)</label>
                        <asp:TextBox runat="server" ID="socialSecurity" CssClass="form-control"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter SSN." ControlToValidate="socialSecurity" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator7"
                  runat="server" ErrorMessage="Please Enter Valid SSN" ControlToValidate="socialSecurity"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^\d{3}-?\d{2}-?\d{4}$">
                  </asp:RegularExpressionValidator>
                    </div>

                    <div class="col-sm-4 required">
                        <label>Date of Birth(dd/mm/yyyy)</label>
                        <asp:TextBox runat="server" ID="dateOfBirth" CssClass="form-control"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Date of Birth." ControlToValidate="dateOfBirth" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator13"
                  runat="server" ErrorMessage="Please Enter Valid Date of Birth" ControlToValidate="dateOfBirth"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$">
                             </asp:RegularExpressionValidator>
                    </div>

                    <div class="col-sm-4 required">
                        <label>Driver's License(Last 4 digits)</label>
                        <asp:TextBox runat="server" ID="driversLicenseLastFourDigits" CssClass="form-control"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
                    runat="server" ForeColor="Red"
                    ErrorMessage="Please enter Driver's License." ControlToValidate="driversLicenseLastFourDigits" 
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />    

                         <asp:RegularExpressionValidator ID="RegularExpressionValidator8"
                  runat="server" ErrorMessage="Please Enter Valid Driver's License" ControlToValidate="driversLicenseLastFourDigits"
                  CssClass="alert-text"  ForeColor="Red"
                  ValidationExpression="^[0-9]{4}$">
                  </asp:RegularExpressionValidator>
                    </div>



                </div>

                <div class="col-sm-12">
                 <div class="col-sm-4 required">
           <label>Password</label>
           <asp:TextBox  runat="server" ID="passWord" CssClass="form-control required text-danger" TextMode="Password" type="password" >

                
           </asp:TextBox>
                     
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
                    runat="server"
                    ErrorMessage="Please enter password." ControlToValidate="passWord"
                    Display="Dynamic" SetFocusOnError="True" CssClass="alert-text" />

            <asp:RegularExpressionValidator ID="RegularExpressionValidator14"
              runat="server" ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one 
                                alphabetic character, and must not contain special characters" ControlToValidate="passWord"
                  CssClass="alert-text"
                  ForeColor="Red"
                  ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$">
                  </asp:RegularExpressionValidator>

                     
                     
        </div>
                    <div >
                         <br />
                         <a href="#" data-toggle="tooltip" class="text-justify" title="Password must be between 8 and 10 characters, contain at least one digit and one 
                                alphabetic character, and must not contain special characters" style="color:blue">?</a>
                     </div>
                    </div>
                


                <div class="col-sm-12">
                    <br />
                    <div class="col-sm-2">

                    </div>
                    <div class="col-sm-4">
                        <asp:Button class="btn navbar-btn" ID="saveInfo" OnClientClick="javascript:alert('Work In Progress')" Text="Save Personal Information" runat="server" />
                    </div>
                    <div class="col-sm-4">
                        <asp:Button class="btn navbar-btn" ID="enterLoanInfo" OnClick="enter_Loan_info" Text="Enter Loan Information >>>" runat="server" />
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
                 </div>
        </form>
    </body>

    </html>