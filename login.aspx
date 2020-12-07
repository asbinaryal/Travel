<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="tour.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Custome.css" rel="stylesheet" />

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">

        div.absolute {
  position: absolute;
  width: 50%;
  bottom: 10px;
  border: 3px solid #8AC007;
} 

        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            left: 0px;
            top: 0px;
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

                                     <li role="separator" class="divider"></li>
                                     <li class="dropdown-header">Outside Country</li>
                                     <li role="separator" class="divider"></li>

                                     <li ><a href="#">Haridduhar</a></li>
                                     <li ><a href="#">Kashi</a></li>
                                     <li ><a href="#">Kanya-kumari</a></li>





                                 </ul>
                                </li>
                                <li ><a href="SignUp.aspx">SignUp</a></li>
                               <li class="active" ><a href="login.aspx">login</a></li>

                        </ul>
              </div>
                    </div>
                </div>
                     </div>
        


                     <!--login form starts here-->
     <div class="center-page">
            <div class="container">
                <div class="form-horizontal">
                    <h2 style="text-align:left">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Login Form  </h2>
                    <hr/>
                  
                    <div class="form-group">


                        <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Username"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtusername" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" CssClass="text-danger" runat="server" ErrorMessage="Please enter username" ControlToValidate="txtusername" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        </div>
           
            
           <div class="form-group">


                        <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Password"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" CssClass="text-danger" runat="server" ErrorMessage="Please enter valid password" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>


                            
                        </div>
            </div>
                    <div class="form-group">


                       <div class="col-md-2"></div>

                        <div class="col-md-6">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            <asp:Label ID="Label3" CssClass="control-label" runat="server" Text="Remember me"></asp:Label>
                            

                        </div>
                        </div>

                     <div class="form-group">


                         <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnlogin" cssClass="btn btn-success" runat="server" Text="Login&raquo;" OnClick="btnlogin_Click"   />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                        </div>
                        </div>

                    <!-- for forgot password-->
                    
                    <div class="form-group">


                       <div class="col-md-2"></div>

                        <div class="col-md-6">


                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgotpass.aspx">Forget Password</asp:HyperLink>

                        </div>
                        </div>



                    </div>
                </div>
                </div>
         
        
         








                     <!--footer starts here-->
 <hr/>
        
        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;hamroyatra.com &middot;<a href="WebForm1.aspx">Home </a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Package </a></p>



                </div>
        


            </footer>



    </form>
</body>
</html>
