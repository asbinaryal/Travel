<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="tour.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Recovery</title>
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
                                
                               <li><a href="login.aspx">login</a></li>

                        </ul>
              </div>
                    </div>
                </div>
            <div class="container">
                <div class="form-horizontal">
                    <br/><br/><br/><br/><br/>
                    <h2>Reset Password</h2>
                    <hr />
                   
                                 <div class="form-group">

                        <asp:Label ID="lblMsg" CssClass="col-md-2 control-label" runat="server"  Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                     </div>
                    <div class="form-group">

                        <asp:Label ID="lblNewPassword" CssClass="col-md-2 control-label" runat="server" Text="Enter Your New Password" Visible="False"></asp:Label>
                        <div class="col-md-3">

                            <asp:TextBox ID="txtNewPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass="text-danger" runat="server" ErrorMessage="Enter your New Password" ControlToValidate="txtNewPass" ForeColor="#CC0000"></asp:RequiredFieldValidator>

                        </div>

                        </div>

                    <div class="form-group">

                        <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Confirm Your New Password" Visible="False"></asp:Label>
                        <div class="col-md-3">

                            <asp:TextBox ID="txtConfirmPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass="text-danger" runat="server" ErrorMessage="Confirm your New Password" ControlToValidate="txtConfirmPass" ForeColor="#CC0000"></asp:RequiredFieldValidator>

                        </div>

                        </div>
                    

                    <div class="form-group">
                        <div class="col-md-2"> </div>

                        <div class="col-md-6">

                            <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Reset" Visible="False" OnClick="btnResetPass_Click" />
                            <asp:Label ID="lblResetPassMsg" CssClass="text-success" runat="server" Text="Label"></asp:Label>

                        </div>


                    </div>
            </div>
           
                </div>

        </div>
    </form>

       <!--Footer Starts----->
        <hr/>

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;hamroyatra.com &middot;<a href="WebForm1.aspx">Home </a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Package</a> </p>

                </div>
            

            </footer>

        <!--Footer Ends----->

</body>
</html>
