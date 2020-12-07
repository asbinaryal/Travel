<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addpackage.aspx.cs" Inherits="tour.addpackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h2 style="text-align:center; position:absolute; top:50px;"  class="auto-style7">Search Package</h2>
        <br/><br/><br/>
      
   
  
    <div class="container" style="top:90px; position:absolute;left:100px;  text-align:right;">
    <div class="form-horizontal" >
         
        <br/><br/><br/>
        <hr/>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" cssClass="col-md-4 control-label" Text="Package Id"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtpackageid" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            </div>

        <div class="form-group">
            <asp:Label ID="Label1" runat="server" cssClass="col-md-4 control-label" Text="Package Name"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtpackagename" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" CssClass="col-md-4 control-label" Text="Price"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtprice" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            </div>
         <div class="form-group">
            <asp:Label ID="Label15" runat="server" CssClass="col-md-4 control-label" Text="Deducted Price"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtdeductedprice" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" CssClass="col-md-4 control-label" Text="No.of people"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtnoofpeople" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            </div>
       
        
         <div class="form-group">
            <asp:Label ID="Label5" runat="server" CssClass="col-md-4 control-label" Text="Category"></asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlcategory" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged"></asp:DropDownList>
            </div>
            </div>
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" CssClass="col-md-4 control-label" Text="Sub-Category"></asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlsubcategory" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
            </div>
         <div class="form-group">
            <asp:Label ID="Label7" runat="server" cssClass="col-md-4 control-label" Text="Description"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtdescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            </div>
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" cssClass="col-md-4 control-label" Text="Package Details"></asp:Label>
            <div class="col-md-3" style="left: 0px; top: 0px">
                <asp:TextBox ID="txtpackagedetails" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            </div>
       <%--  <div class="form-group">
            <asp:Label ID="Label15" runat="server" cssClass="col-md-2 control-label" Text="Date"></asp:Label>
            <div class="col-md-3">
                <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick"></asp:Timer>
                
            </div>
            </div>

        
           <%-- <div class="form-group">
            <asp:Label ID="Label15" runat="server" cssClass="col-md-2 control-label" Text="date"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtdate" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            </div>--%>

        <div class="form-group">
            <asp:Label ID="Label14" runat="server" cssClass="col-md-4 control-label" Text="Agency Name"></asp:Label>
            <div class="col-md-3">
                
                <asp:TextBox ID="txtaname" CssClass="form-control" runat="server"  ></asp:TextBox>
                           
            </div>
            </div>

        <div class="form-group">
            <asp:Label ID="Label9" runat="server" cssClass="col-md-4 control-label" Text="Upload Image"></asp:Label>
            <div class="col-md-3">
                <asp:FileUpload ID="fuimg01" CssClass="form-control" runat="server" />
            </div>
            </div>

        <div class="form-group">
            <asp:Label ID="Label10" runat="server" cssClass="col-md-4 control-label" Text="Upload Image"></asp:Label>
            <div class="col-md-3">
                <asp:FileUpload ID="fuimg02" CssClass="form-control" runat="server" />
            </div>
            </div>
        <div class="form-group">
            <asp:Label ID="Label11" runat="server" cssClass="col-md-4 control-label" Text="Upload Image"></asp:Label>
            <div class="col-md-3">
                <asp:FileUpload ID="fuimg03" CssClass="form-control" runat="server" />
            </div>
            </div>
        <div class="form-group">
            <asp:Label ID="Label12" runat="server" cssClass="col-md-4 control-label" Text="Upload Image"></asp:Label>
            <div class="col-md-3">
                <asp:FileUpload ID="fuimg04" CssClass="form-control" runat="server" />
            </div>
            </div>
        <div class="form-group">
            <asp:Label ID="Label13" runat="server" cssClass="col-md-4 control-label" Text="Upload Image"></asp:Label>
            <div class="col-md-3">
                <asp:FileUpload ID="fuimg05" CssClass="form-control" runat="server" />
            </div>
            </div>
        <div class="form-group">
            <div class="col-md-2"></div>
                        <div class="col-md-4">
                        <%--    <asp:Button ID="btnadd" cssClass="btn btn-success" runat="server" Text="Add Package" OnClick="btnadd_Click1"   />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnupdate" cssClass="btn btn-success" runat="server" Text="Update" OnClick="btnupdate_Click" />--%>

                            <asp:Button ID="btnsearch" cssClass="btn btn-success" runat="server" Text="Search Package" OnClick="btnsearch_Click"   />

&nbsp;<table class="nav-justified">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="gvReport" CssClass="col-md-2" runat="server" AutoGenerateColumns="False" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                                            <Columns>
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="Pid" HeaderText="Package Id"  />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="pname" HeaderText="Package Name" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="pprice" HeaderText="Price" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="discounted_price" HeaderText="Deducted Price" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="NoOfPeople" HeaderText="No of People" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="Pcategory" HeaderText="Category" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="Psubcategory" HeaderText="Sub-Category" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="Pdescription" HeaderText="Description" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="Ppackagedetails" HeaderText="Package Details" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="agency" HeaderText="Agency Name" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="requestdatetime" HeaderText="Date Time" />
                                              <%--  <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btnedit" runat="server" Text="Edit" OnClick="btnedit_Click" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
                                                <asp:TemplateField HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:Button ItemStyle-HorizontalAlign="Justify" ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                                        </asp:GridView>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                        </div>





    </div>

    </div>





</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            left: 2px;
            top: 94px;
            width: 168px;
        }
        .auto-style3 {
            left: 0px;
            top: 0px;
        }
        .auto-style4 {
            left: -2px;
            top: 71px;
            width: 140px;
        }
        .auto-style5 {
            left: -5px;
            top: 187px;
            width: 172px;
        }
        .auto-style6 {
            left: 0px;
            top: 0px;
            height: 40px;
        }
        .auto-style7 {
            width: 669px;
        }
    </style>
</asp:Content>

