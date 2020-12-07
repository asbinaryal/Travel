<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="tour.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>

     
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Custome.css" rel="stylesheet" />

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        
            <div class="nav navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> 
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"> </span>
                        <span class="icon-bar"> </span>
                        <span class="icon-bar"> </span>
                        </button>
                        <a class="navbar-brand" href="WebForm1.aspx"><span> <img src="icon/logo.jfif" alt="Hamro Yatra" height="30" /></span>Your Travel Begins.... </a>
 

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="WebForm1.aspx">Home</a></li>
                            <li ><a href="#">About</a></li>
                             <li ><a href="#">Contact</a></li>
                             <li ><a href="#">Blog</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Package<b class="caret"></b></a>
                                 <ul class="dropdown-menu " >
                                     <li class="dropdown-header">Domestic</li>
                                     <li role="separator" class="divider"></li>
                                     <li ><a href="PackageView.aspx">Pokhara</a></li>
                                     <li ><a href="#">Chitwan</a></li>
                                     <li ><a href="#">Lumbini</a></li>

                                     <li role="separator" class="divider"></li>
                                     <li class="dropdown-header">International</li>
                                     <li role="separator" class="divider"></li> 
                                     <li ><a href="#">Bali</a></li>
                                     <li ><a href="#">Thailand</a></li>
                                     <li ><a href="#">China</a></li>

                                     <li role="separator" class="divider"></li>
                                     <li class="dropdown-header">Religious</li>
                                     <li role="separator" class="divider"></li>
                                     <li class="dropdown-header">Inside Country</li>
                                     <li ><a href="#">Goralhkali</a></li>
                                     <li ><a href="#">CG Dham</a></li>
                                     <li ><a href="#">Muktinath</a></li>
                                     <li class="dropdown-header">Outside Country</li>
                                     <li ><a href="#">Haridduhar</a></li>
                                     <li ><a href="#">Kashi</a></li>
                                     <li ><a href="#">Kanya-kumari</a></li>





                                 </ul>
                                </li>
                                <li >
                                    <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out"   PostBackUrl="~/WebForm1.aspx" />
                                    
                                </li>
                               

                        </ul>
              </div>
                    </div>
                </div>
        <br/>
        <br/>
        <br/>
                 <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"> </asp:Label>

            <hr/>

        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;hamroyatra.com &middot;<a href="WebForm1.aspx">Home </a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Package</a> </p>

                </div>



            </footer>



    </form>
</body>
</html>
