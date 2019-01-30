<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WADProject._default" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/StyleSheet1.css" />
        <script src="scripts/JavaScript.js" type="text/javascript"></script>

    </head>

    <body>
        <form id="form1" runat="server">
            <div id="header" class="jumbotron">
                <div class="container text-left">
                    <header>
                        <h1>AAL AmericanAutoLoans.com </h1>
                        <img id="imgright" style="float: right; width: 250px; height: 125px; margin-top: -125px;" src="images/img3.jpg" alt="AAL AmericanAutoLoans.com" />
                    </header>
                </div>
            </div>
            <nav class="navbar navbar-inverse">
                <div class="container">
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <div class="row">
                            <div class="col-md-2">
                                <a href="#" onclick="myFunc()">Home</a>
                            </div>
                            <div class="col-md-2">
                                <a href="rates.html">Rates</a>
                            </div>
                            <div class="col-md-2">
                                <a href="questions.html">Questions</a>
                            </div>
                            <div class="col-md-2">
                                <a href="security.html">Security</a>
                            </div>
                            <div class="col-md-2">
                                <asp:Button class="btn-warning" OnClick="verify" Text="APPLY NOW" runat="server" />
                            </div>
                            <div class="col-md-2">
                                <asp:Button class="btn-primary" OnClick="sign_In" Text="SIGN IN"  runat="server" />
                            </div>
                        </div>

                    </div>
                </div>
            </nav>

            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/img.jpg" alt="Image" />
                        <div class="carousel-caption " style="padding-bottom: 245px;">
                            <h1>Used Auto Loans</h1>
                            <h3>from 2.49% APR Auto Pay</h3>
                            <h4>when purchased from dealer</h4>
                            <asp:Button class="btn-warning" OnClick="verify" Text="APPLY NOW" runat="server" />&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:Button class="btn-primary" OnClick="usedCar" ID="UsedCar" Text="USED CAR PRIVATE PARTY" runat="server" />
                        </div>
                    </div>

                    <div class="item">
                        <img src="images/img1.jpg" alt="Image" />
                        <div class="carousel-caption" style="padding-bottom: 245px;">
                            <h1>Used Auto Loans</h1>
                            <h3>from 2.49% APR Auto Pay</h3>
                            <h4>when purchased from dealer</h4>
                            <asp:Button class="btn-warning" Text="APPLY NOW" runat="server" />&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:Button class="btn-primary" OnClick="usedCar" Text="USED CAR PRIVATE PARTY" runat="server" />
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <footer class="navbar navbar-inverse ">
                <span id="watermark" style="left: 15px;">AAL AmericanAutoLoans.com</span>
                <span id="watermark" style="left: 145px;">AAL AmericanAutoLoans.com</span>
                <span id="watermark" style="left: 330px;">AAL AmericanAutoLoans.com</span>
                <span id="watermark" style="left: 457px;">AAL AmericanAutoLoans.com</span>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-4 text-left" style="bottom: 15px;">
                            <a href="#first" onclick="toggleTable();">Why AAL</a>
                        </div>
                        <div class="col-md-4 text-center" style="bottom: 15px;">
                            <a href="#second" onclick="toggleTable();">100% Loan Experience Guarantee</a>
                        </div>
                        <div class="col-md-4 text-right" style="bottom: 15px;">
                            <a href="#third" onclick="toggleTable();">We Will Beat Any Qualifying Rate</a>
                        </div>
                    </div>
                </div>
                <table class="table text-justify table-responsive" id="collapseme">
                    <tr>
                        <td id="first">When you have good credit, you’ve earned a lower interest rate, and a refreshingly simple loan process. We’ve built our business around that belief, and it’s made us the premier national online consumer lender. Got good credit? Get a low-interest, no-fee loan from $5,000 to $100,000, for practically any purpose, as soon as today.
                        </td>
                        <td id="second">At American Auto Loans we’ve put you, the customer, at the center of the loan process. You decide your loan amount, terms and funding date through an online process that you control. And we guarantee that it will be the best loan process you’ve ever experienced. If after receiving your loan from us you are not scompletely satisfied, we’ll send you $100.
                        </td>
                        <td id="third">Many lenders claim that they have low interest rates. At America Auto Loans we actually do. We are so confident in the competitiveness of our interest rates that we will beat a qualifying interest rate (APR)2 from any other lender. With our low rates and our commitment to exceptional service, there's no reason to go anywhere else when you need a loan.
                        </td>
                    </tr>
                </table>

            </footer>

           


             <div class="col-sm-12 container" >
     <asp:ScriptManager ID="ScriptManager1" 
                        runat="server">
    </asp:ScriptManager>
     
    <asp:Timer ID="Timer1" runat="server" 
              Interval="1000">
    </asp:Timer>
  
    <asp:UpdatePanel ID="UpdatePanel1" 
                     runat="server">
    <Triggers>
    <asp:AsyncPostBackTrigger ControlID="Timer1" 
                              EventName="Tick" />
  </Triggers>
    
    <ContentTemplate>
  <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="ads.xml"
Target="_blank" KeywordFilter="small" >
    </asp:AdRotator>

          <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="ads.xml"
Target="_blank" KeywordFilter="big" >
         </asp:AdRotator>

              <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="ads.xml"
Target="_blank" KeywordFilter="large" >
    </asp:AdRotator>

          <asp:AdRotator ID="AdRotator4" runat="server" AdvertisementFile="ads.xml"
Target="_blank" KeywordFilter="fourth" >
    </asp:AdRotator>

          <%--<asp:AdRotator ID="AdRotator5" runat="server" AdvertisementFile="ads.xml"
Target="_blank" KeywordFilter="fifth" >
    </asp:AdRotator>--%>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>




        </form>
    </body>

    </html>