<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="receipt.aspx.cs" Inherits="tour.receipt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <asp:Repeater ID="rptrpackagedetails" runat="server">
               <ItemTemplate>
                       <div class="item <%#GetActiveImgClass(Container.ItemIndex)%>">

        <div class="col-md-3" runat="server" id="divPriceDetails">
            <div style="border-bottom:1px solid #eaeaec;">
                <h5 class="auto-style1"> Price Details</h5>
                <div>
                    <label> Price</label>
                               <span class="float-right priceGray" id="spanCartTotal" runat="server">Rs. <%# Eval ("Pprice") %></span>
                </div>
                <div>
                    <label> Discount</label>
                               <span class="float-right priceGreen" id="spanDiscount" runat="server">Rs.   <%# string.Format("{0}",Convert.ToInt64(Eval("Pprice"))-Convert.ToInt64(Eval("discounted_price" )) )   %> </span>
               </div>
                    </div>
            </div>        
        <div>
            <div class="pacPriceView">
                <label>Total</label>
                <span class="float-right" id="spanTotal" runat="server">Rs.<%# Eval ("discounted_price") %></span>
            </div>
            </div>
        </div>
                           </div>
                   </ItemTemplate>
                   </asp:Repeater>



</asp:Content>
