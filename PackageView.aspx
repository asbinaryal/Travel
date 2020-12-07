<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="PackageView.aspx.cs" Inherits="tour.PackageView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />

    <div style="padding-top:50px">
        <div class="col-md-5">
            <div style="max-width:480px" class="thumbnail">
              <!--for image slider-->
                
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
   
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

    <%--  <asp:Repeater id="rptrImage" runat="server">
          <ItemTemplate>
    <div class="item <%#GetActiveImgClass(Container.ItemIndex)%>">
      <img src="icon/PackageImages/<%#Eval("Pid") %>/<%#Eval("Iname") %>" alt="<%#Eval("Iname") %>" onerror="this.src='icon/noimg.png'" />
    
             

    </ItemTemplate>
    </asp:Repeater>
    
  </div>--%>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

                <!--for image slider end-->
               
                </div>
            </div>
        <div class="col-md-5">
            <asp:Repeater ID="rptrpackagedetails" runat="server">
               <ItemTemplate>
            <div class="divDet1">
            <h1 class="pacnameview"> <%# Eval ("pname") %></h1>
            <span class="pacOgpriceview"><%# Eval ("Pprice") %></span> <%# Eval ("discounted_price") %><span class="pacpricediscountview">  <%# string.Format("{0}",Convert.ToInt64(Eval("Pprice"))-Convert.ToInt64(Eval("discounted_price" )))  %> </span>
            <p class="pacpricesview">Rs.<%# Eval ("discounted_price") %></p>    
            </div>

             <div class="divDet1">
                 <asp:Button id="btnaddtocart" CssClass="mainbutton" runat="server" Text="Add To Cart" OnClick="btnaddtocart_Click" />
                 <asp:Label ID="lblError" CssClass="text-danger" runat="server" Text="Label"></asp:Label>
                 </div>

             <div class="divDet1">
                 <h5 class="h5">Description</h5>
                 <p>                                    

                     <%# Eval ("PDescription") %>

                 </p>
                  <h5 class="h5">Package Details</h5>
                 <p>                                    

                     <%# Eval ("Ppackagedetails") %> 

                 </p>

                 <h5 class="h5">Min people </h5>
                 <p>                                    

                   <%# Eval ("NoOfPeople") %>

                 </p>
                 </div>
                 </ItemTemplate>
                 </asp:Repeater>

        </div>
        </div>


</asp:Content>
