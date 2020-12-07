<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="tour.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hamro Yatra</title>
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
                            <li class="active"><a href="WebForm1.aspx">Home</a></li>
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
                                <li ><a href="SignUp.aspx">SignUp</a></li>
                               <li ><a href="login.aspx">login</a></li>

                        </ul>
              </div>
                    </div>
                </div>
            <!--image slider------>

                <div class="container">
  <h2>Carousel Example</h2>  
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
        <img src="icon/bali.jpg" alt="bali" style="width:100%; height:500px ;"/>
      </div>

      <div class="item">
        <img src="icon/chitwan.jpg" alt="chitwan" style="width:100%; height:500px ;"/>
      </div>
    
      <div class="item">
        <img src="icon/bandipur.jpg" alt="bandipur" style="width:100%; height:500px ;"/>
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
                <!--image slider End----->
        </div>
        <!--Mid content----->
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="icon/pokhara.jpg" alt="domesticpackage" width="140" height="140"/>
                    <h2> Domestic Packages </h2>
                    <p> For a country like Nepal, which is blessed with an abundance of picturesque natural destinations and cultural diversity the tourism sector — which accounted for 7.5 per cent of the country’s GDP in 2017 according to Economic Impact Report byWorld Travel and Tourism Council — has become an important part of the national economy. With the appointment of new minister
                        Yogesh Bhattarai at Ministry of Culture, Tourism and Civil Aviation (MoCTCA) and campaigns like Visit Nepal 2020 gaining
                        pace, it can be said the tourism industry of Nepal is moving in right direction. Prospects of domestic tourism in the recent
                        years have also become a key area of interest for tourism entrepreneurs leading to its steady growth which in turn, is bound
                        to fuel the tourism environment in Nepal in the coming days. </p>
                    <p> <a class="btn btn-default" href="#" role="button" > View More &raquo;</a> </p>
                                                        
                    </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="icon/bali.jpg" alt="International package" width="140" height="140"/>
                    <h2> International Packages </h2>
                    <p> For a country like Nepal, which is blessed with an abundance of picturesque natural destinations and cultural diversity the tourism sector — which accounted for 7.5 per cent of the country’s GDP in 2017 according to Economic Impact Report byWorld Travel and Tourism Council — has become an important part of the national economy. With the appointment of new minister
                        Yogesh Bhattarai at Ministry of Culture, Tourism and Civil Aviation (MoCTCA) and campaigns like Visit Nepal 2020 gaining
                        pace, it can be said the tourism industry of Nepal is moving in right direction. Prospects of domestic tourism in the recent
                        years have also become a key area of interest for tourism entrepreneurs leading to its steady growth which in turn, is bound
                        to fuel the tourism environment in Nepal in the coming days. </p>
                    <p> <a class="btn btn-default" href="#" role="button" > View More &raquo;</a> </p>
                                                        
                    </div>

               
                <div class="col-lg-4">
                    <img class="img-circle" src="icon/bali.jpg" alt="Religious package" width="140" height="140"/>
                    <h2> Religious Packages </h2>
                    <p> For a country like Nepal, which is blessed with an abundance of picturesque natural destinations and cultural diversity the tourism sector — which accounted for 7.5 per cent of the country’s GDP in 2017 according to Economic Impact Report byWorld Travel and Tourism Council — has become an important part of the national economy. With the appointment of new minister
                        Yogesh Bhattarai at Ministry of Culture, Tourism and Civil Aviation (MoCTCA) and campaigns like Visit Nepal 2020 gaining
                        pace, it can be said the tourism industry of Nepal is moving in right direction. Prospects of domestic tourism in the recent
                        years have also become a key area of interest for tourism entrepreneurs leading to its steady growth which in turn, is bound
                        to fuel the tourism environment in Nepal in the coming days. </p>
                    <p> <a class="btn btn-default" href="#" role="button" > View More &raquo;</a> </p>
                                                        
                    </div>

                    </div>
            </div>
          

        <!--Mid Content End----->

        



        <!--Footer Starts----->
        <hr/>

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;hamroyatra.com &middot;<a href="WebForm1.aspx">Home </a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Package</a> </p>

                </div>

            </footer>

        <!--Footer Ends----->

    </form>
   
</body>
</html>

