﻿
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <title>Sign In</title>
    
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

            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
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


                            <li><a href ="SignUp.aspx">SignUp</a></li>
                            <li  class ="active"><a href ="SignIn.aspx">SignIn</a></li>

                        </ul>
                    </div>

                </div>
                  </nav>
            </div>
          
        <!---- start--->
      
        <div class ="container ">
            <div class ="form-horizontal ">
                <h2>Login Form</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="UserName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="*Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Password"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass ="text-danger " runat="server" ErrorMessage="Password required" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" CssClass =" control-label " runat="server" Text="Remember me"></asp:Label>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnLogin" CssClass ="btn btn-success " runat="server" Text="Login" OnClick="btnLogin_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                    </div>
                </div>
                
              <%--  for forgot password--%>


                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                       
                    </div>
                </div>



                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>
                    </div>
                </div>


            </div>


        </div>
            
        <!----singin form End--->

          <!---------------------------------------------------- `Footer Start----------------------------->

        <footer>
            <div class ="container">
             <p class ="pull-right "><a href="AdminHome.aspx"> Admin Login  </a></p> 
                <p>&copy;2022CodeJanaina.21944 &middot; <a href ="Default.aspx">Home</a>&middot; <a href="#" >About</a>&middot; <a href="#" >Contact</a>&middot; <a href="#" >Product</a></p>

            </div>


        </footer>

         <!---------------------------------------------------- `Footer ends----------------------------->
    </form>
</body>
</html>
