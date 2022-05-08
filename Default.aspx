<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>My Ecommerce Website</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">   </script>
    <meta charset="utf-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>

     <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });
    </script>
   
</head>
<body>

    <form id="form1" cssclass="navBar" runat="server">
        <div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        

             
                <div class ="container">
                    <div class ="navbar-header">
                      <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class ="sr-only">Toggle Navigation</span>
                            <span class ="icon-bar"></span>
                            <span class ="icon-bar"></span>
                            <span class ="icon-bar"></span>

                        </button>

                        <a class ="navbar-brand" href="Default.aspx"><span>
                             <alt="MyEcommerce" height="30" /></span>MyECommerce

                        </a>

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class ="nav navbar-nav navbar-right">
                            <li class ="active"><a href ="Default.aspx">Home</a></li>
                           
                        
                         
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
                             <li>

                            <button id="btnCart" class="btn btn-primary navbar-btn " type="button">
                                Cart <span class="badge " id="pCount" runat="server"></span>
                            </button>
                        </li>
                        
                        <li id="btnSignIN" runat="server"><a href="SignIn.aspx">SignIn</a> </li>
                        <li>
                            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn " runat="server"
                                Text="Sign Out" OnClick="btnlogout_Click" />
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

            <!---------------------------------------------------- image top start----------------------------->
            

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="Images/sale.png" alt="Open" style="width:100%;"/>
          <div class="carousel-caption">
      
           
        </div>
      </div>

      <div class="item">
        <img src="Images/2.png" alt="Woman" style="width:100%;"/>
             <div class="carousel-caption">
         
        </div>
      </div>
    
      <div class="item">
        <img src="Images/3.png" alt="shopping" style="width:100%;" />
             <div class="carousel-caption">
         
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

            <! --- image top end--->

        


         <!---------------------------------------------------- Middle start----------------------------->
       
        <hr />
        <div class ="container center">
            <div class="row">
                <div class ="col-lg-4">
                    <img class ="img-circle" src="Images/woman0.jpg" alt="thumb" width="140" height="140" />
                    <h3>Women</h3>
                    <p>Shop the latest trends in womens fashion with new season dresses, shoes and accessories across our range of designer brands.</p>
                
                </div>

                <div class ="col-lg-4">
                    <img class ="img-circle" src="Images/men0.jpg" alt="thumb" width="140" height="140" />
                    <h3>Men</h3>
                    <p>Men Fashion is a luxury lifestyle brand focused on only the most premium quality designer clothing for men from across the globe</p>
               
                </div>

                <div class ="col-lg-4">
                    <img class ="img-circle" src="Images/shoes.jpg" alt="thumb" width="140" height="140" />
                    <h3>Shoes</h3>
                    <p>Find the latest footwear trends in our stylish selection of shoes online</p>
                    


                </div>

            </div>
</div>
        <hr />

            <!-- ----------------------- Start repeater --------------------------->
         
               <div class="panel-body">
                <div class="row" style="padding-top: 50px">

                    <asp:Repeater ID="rptrProducts" runat="server">
                        <ItemTemplate>      
                             <div class="col-sm-3 col-md-3">
                                <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                                    <div class="thumbnail">
                                           <!-- Product image-->
                                        <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>"
                                           alt="<%# Eval("ImageName") %>" />

                                               <!-- Product Brad Name-->
                                            <div class="probrand">
                                                <%# Eval ("BrandName") %>
                                            </div>

                                               <!-- Product Name-->

                                            <div class="proName">
                                                <%# Eval ("PName") %>
                                            </div>

                                               <!-- Product Price-->
                                              <div class="proprice">
                                                €<%# Eval ("PPrice","{0:0}") %>
                                                </span>
                                              </div>
                                       
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

        <!---------------------------------------------------- Middle ends----------------------------->


        <!---------------------------------------------------- `Footer Start----------------------------->
            <hr />
        <footer class="py-5 bg-dark">
            <div class ="container">
                <p class="pull-right"><a href="#">Back Top</a></p>             
                <p><a href= "#">@2022CodeJanaina.21944</a> &middot; <a href ="SignUp.aspx">SignUp</a>&middot; <a href="#" >Returns</a>&middot; <a href="#" >Shipping</a>&middot; <a href="#" >Contact</a>&middot;<a href="#" >Store</a>&middot; <a href="#" >Privacy</a></p>

            </div>


        </footer>

         <!---------------------------------------------------- `Footer ends----------------------------->

    </form>

   


</body>
</html>
