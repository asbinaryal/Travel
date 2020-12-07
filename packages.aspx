<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="packages.aspx.cs" Inherits="tour.packages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <h3>Welcome to view Packages</h3>
    <div class="row" Style="padding-top:50px">
        <asp:Repeater ID="rptrpackages" runat="server"  >
            <ItemTemplate>

        <div class="col-sm-3 col-md-3">
            <a href="PackageView.aspx?Pid=<%#Eval ("Pid")%>" style="text-decoration:none;"> 
            <div class="thumbnail">

                <img src="icon/PackageImages/<%# Eval ("Pid") %>/<%# Eval ("Imagename") %>"/<%# Eval ("Iname") %>" alt="<%# Eval ("Imagename") %>" />
                <div class="caption">
                   
                    <div class="pacname"><%# Eval ("pname") %></div>
                    <div class="pacprices"><span class="pacOgprice"><%# Eval ("Pprice") %></span> <%# Eval ("discounted_price") %><span class="pacpricediscount">( <%# Eval ("DiscAmount") %> off)</span></div>


                </div>
            </div>


        </div>
              

            </ItemTemplate>
            </asp:Repeater>
    </div>




</asp:Content>
