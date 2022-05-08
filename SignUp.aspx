
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

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


                             <li class ="active"><a href ="SignUp.aspx">SignUp</a></li>
                            <li><a href ="SignIn.aspx">SignIn</a></li>

                        </ul>
                    </div>


                </div>

                </nav>
            </div>
            
        <!--- ----------------------------Sign Up Start------------------ --->
            <div class="center-page">


                 <label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email"></asp:TextBox>
            </div>


                
                <label class="col-xs-11"></label>
                <label class="col-xs-11">Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter Your Name"></asp:TextBox>
            </div>
                
                <label class="col-xs-11"></label>
                <label class="col-xs-11">Username:</label>
                 <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter Your User Name"></asp:TextBox>
            </div>

                <label class="col-xs-11"></label>
                <label class="col-xs-11">Phone Number:</label>
                 <div class="col-xs-11">
            <asp:TextBox ID="txtPhone" runat="server" Class="form-control" placeholder="Enter Your Phone Number"></asp:TextBox>
            </div>

                  <label class="col-xs-11"></label>
                <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your password"></asp:TextBox>
            </div>


                
                <label class="col-xs-11"></label>
                 <label class="col-xs-11">Confirm Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your password Again"></asp:TextBox>
            </div>


               <label class="col-xs-11"></label>
              <label class="col-xs-11"></label>
             <div class="col-xs-11">
                 <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" Text="SignUP"  OnClick="txtsignup_Click"/> 
                  &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
             


                 <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                 <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
             


            </div>
            </div>
        <!--- ----------------------------Sign Up End------------------ --->

           <!---------------------------------------------------- `Footer Start----------------------------->
      
      
        <footer class="footer-pos">


            <div class ="container">

                <p>&copy;2022CodeJanaina.21944 &middot; <a href ="Default.aspx">Home</a>&middot; <a href="#" >About</a>&middot; <a href="#" >Contact</a>&middot; <a href="#" >Product</a></p>

            </div>


        </footer>

         <!---------------------------------------------------- `Footer ends----------------------------->
    </form>
</body>
</html>
