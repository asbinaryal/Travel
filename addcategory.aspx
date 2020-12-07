w<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addcategory.aspx.cs" Inherits="tour.addcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
div class="container">
    <div class="form-horizontal">
        <br/><br/><br/>
        <h2>Add Category</h2>
        <hr/>

         <div class="form-group">
             <asp:Label ID="lblcatid" cssClass="col-md-2 control-label" runat="server" Text="Category Id"></asp:Label>
            
                        <div class="col-md-3">

                           
                            <asp:TextBox ID="txtcatid"  cssclass="form-control"  runat="server"></asp:TextBox> <br/>
                           

                        </div>
                        </div>



         <div class="form-group">
             <asp:Label ID="lbladdcat" cssClass="col-md-2 control-label" runat="server" Text="Category Name"></asp:Label>
            
                        <div class="col-md-3">

                           
                            <asp:TextBox ID="txtaddcat"  cssclass="form-control"  runat="server"></asp:TextBox> <br/>
                           

                        </div>
                        </div>
          <div class="form-group">
            <div class="col-md-2" style="left: 0px; top: 0px">
                <table class="nav-justified">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
              </div>
                        <div class="col-md-6">
                            <asp:Button ID="btnaddcat" runat="server" cssClass="btn btn-success"  Text="Add cat" OnClick="btnaddcat_Click"  />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnupdate" runat="server" cssClass="btn btn-success"  Text="Update" OnClick="btnupdate_Click1" />
&nbsp;&nbsp;&nbsp;
                            <table class="nav-justified">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                        </div>

           </div>
          <div class="form-group">
            <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            <table class="nav-justified">
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="catid" HeaderText="Category Id">
                                                <ControlStyle BorderColor="#66FFCC" BorderStyle="Solid" ForeColor="#CCFFCC" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="catname" HeaderText="Category Name" />
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btnedit" runat="server"  Text="Edit" OnClick="btnedit_Click1" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click1" Text="Delete" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                    </td>
                                    
                            </table>
                        </div>
                        </div>




        









</asp:Content>
