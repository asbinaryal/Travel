<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="tour.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Custome.css" rel="stylesheet" />

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 91.66666667%;
            left: 0px;
            top: 0px;
            height: 16px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>

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
                            <li ><a href="WebForm1.aspx">Home</a></li>
                            <li ><a href="#">About</a></li>
                             <li ><a href="#">Contact</a></li>
                             <li ><a href="#">Blog</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Package<b class="caret"></b></a>
                                 <ul class="dropdown-menu " >
                                     <li class="dropdown-header">Domestic</li>
                                     <li role="separator" class="divider"></li>
                                     <li ><a href="#">Pokhara</a></li>
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
                                <li class="active" ><a href="SignUp.aspx">SignUp</a></li>
                            <li ><a href="login.aspx">Login</a></li>

                        </ul>
              </div>
              </div>
              </div>
              </div>

              

        <!---SignUp page--->
        <div class="center-page">

            

            <label class="auto-style1"> Username: </label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter your Name"></asp:TextBox>
            </div>

            <label class="col-xs-11"> Password: </label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPass" TextMode="Password" runat="server" Class="form-control" placeholder="Enter your Password" ControlToCompare="txtPass"></asp:TextBox>

            </div>

            <label class="col-xs-11"> Confirm-Password: </label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCpass" TextMode="Password" runat="server" Class="form-control" placeholder="Confirm your Password"></asp:TextBox>
            </div>

            <label class="col-xs-11"> Email: </label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter your E-mail"></asp:TextBox>
            </div>

            
            <label class="col-xs-11"> Fullname: </label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtname" runat="server" Class="form-control" placeholder="Enter your Full-Name"></asp:TextBox>
            </div>



            <label class="col-xs-11">  </label>

            <div class="col-xs-11">
            <asp:Button ID="btnsignup" Class="btn btn-success" runat="server" Text="SignUp" OnClick="btnsignup_Click1"   />
          &nbsp;&nbsp;
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
          </div>

            </div>
        
         <!---SignUp page end--->

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
