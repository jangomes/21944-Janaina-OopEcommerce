
    <%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <meta charset="utf-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Custom.css" rel="stylesheet" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <div>

              <div class="navbar navbar-default navbar-fixed-top" role ="navigation"> 
                <div class ="container">
                    <div class ="navbar-header">
                        <button type="button" class ="navbar-toggle " data-target=".navbar-collapse"> 
                            <span class ="sr-only">Toggle Navigation</span>
                            <span class ="icon-bar"></span>
                            <span class ="icon-bar"></span>
                            <span class ="icon-bar"></span>

                        </button>

                        <a class ="navbar-brand" href="Default.aspx"><span><alt="MyEcommerceDB" height="30"/></span>MyEcommerce</a>

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class ="nav navbar-nav navbar-right">
                            <li><a href ="Default.aspx">Home</a></li>
                         
                            <li class ="dropdown">
                                <a href="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu ">
                                    <li class="dropdown-header">MEN</li>
                                        <li role="separator" class="divider"></li>
                                        <li> <a href="Shirts.aspx">Shirts</a> </li>
                                        <li> <a href="Trousers.aspx">Trousers</a> </li>
                                       <li> <a href="Shoes.aspx">Shoes</a> </li>
                                        <li role="separator" class="divider"></li>

                                    <li class="dropdown-header">WOMEN</li>
                                     <li role="separator" class="divider"></li>
                                        <li> <a href="Top.aspx">Top</a> </li>
                                        <li> <a href="Trousers.aspx">Trousers</a> </li>
                                          <li> <a href="Shoes.aspx">Shoes</a> </li>

                                    
                                 </ul>
                            </li>


                            
                            <li><a href ="SignIn.aspx">SignIn</a></li>

                        </ul>
                    </div>




                </div>

            </div>


           

        </div>

         <div class="container">
             <div class="form-horizontal">
                 <h2>Recover Password</h2>
                 <hr />

                 <h3>Please Enter Your Email Address, we will send a link to reset the password</h3>

                 <div class ="form-group">
                    <asp:Label ID="lblEmail" CssClass ="col-md-2 control-label" runat="server" Text="Email Address"></asp:Label>
                    <div class ="col-md-3">
                        <asp:TextBox ID="txtEmailID" CssClass =" form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>

                </div>

                <div class ="form-group">
                    <div class ="col-md-2">   </div>

                    <div class ="col-md-6">
                        <asp:Button ID="btnResetPass" CssClass ="btn btn-default" runat="server" Text="Send"  OnClick="BtnResetPass_Click" />
                   <asp:Label ID="lblResetPassMsg" CssClass ="text-success " runat="server" ></asp:Label>
                         </div>
                </div>

            </div>
         </div>

    </form>

     <!---------------------------------------------------- Footer Start----------------------------->

        <footer>
            <div class ="container">
                <p class="pull-right"><a href="#">Back Top</a></p>
                <p>&copy;2022CodeJanaina.21944 &middot; <a href ="Default.aspx">Home</a>&middot; <a href="#" >About</a>&middot; <a href="#" >Contact</a>&middot; <a href="#" >Product</a></p>

            </div>


        </footer>

         <!---------------------------------------------------- Footer ends----------------------------->

</body>
</html>
