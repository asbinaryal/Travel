<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addsubcat.aspx.cs" Inherits="tour.addsubcat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    div class="container">
    <div class="form-horizontal">
        <br/><br/><br/>
        <h2>Add Category</h2>
        <hr/>

          
        
        <div class="form-group">
             <asp:Label ID="lblsubcatid" cssClass="col-md-2 control-label" runat="server" Text="Sub-Category Id"></asp:Label>
            
                           
                             
            
                        <div class="col-md-3">
                            <asp:TextBox ID="txtsubcatid"  cssclass="form-control"  runat="server"></asp:TextBox>

                           
                            <br/>
                           

                        </div>
                        </div>

             

        <div class="form-group">
             <asp:Label ID="lblsubcat" cssClass="col-md-2 control-label" runat="server" Text="Sub-Category"></asp:Label>
            
                        <div class="col-md-3">

                           
                            <asp:TextBox ID="txtsubcat"  cssclass="form-control"  runat="server"></asp:TextBox> <br/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorsubcat" CssClass="danger" runat="server" ErrorMessage="Please fill box" ForeColor="Red" ControlToValidate="txtsubcat"></asp:RequiredFieldValidator>
                           

                        </div>
                        </div>

                               <asp:Label ID="lblmaincat" cssClass="col-md-2 control-label" runat="server" Text=" Category"></asp:Label>
            
                        <div class="col-md-3">

        
                            <asp:DropDownList ID="ddlmaincat" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlmaincat_SelectedIndexChanged"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatormaincat" CssClass="danger" runat="server" ErrorMessage="Please fill box" ForeColor="Red" ControlToValidate="ddlmaincat"></asp:RequiredFieldValidator>
                           

                        </div>
                        </div>
    <br/><br/><br/><br/><br/>
          <div class="form-group">
            <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnsubcategory" cssClass="btn btn-success" runat="server" Text="Add sub-category" OnClick="btnsubcategory_Click"    />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                            <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-success" Text="UPDATE" OnClick="btnupdate_Click" />
                        </div>
                        </div>

           
          <div class="form-group">
            <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                          <br/>
                          <br/>
                         
                          
                             <table class="nav-justified">
                                <tr>
                                    <td>
                                        <asp:GridView ID="gvReport" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            <Columns>
                                                <asp:BoundField DataField="subcatid" HeaderText="Sub-Category Id">
                                                <ControlStyle BorderColor="#66FFCC" BorderStyle="Solid" ForeColor="#CCFFCC" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="subcatname" HeaderText="Sub-Category Name" />
                                                <asp:BoundField DataField="catname" HeaderText="Category" />
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btnedit" runat="server"  Text="Edit" OnClick="btnedit_Click" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <EditRowStyle BackColor="#999999" />
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                        </asp:GridView>

                                    </td>
                                   </table>
                          
                        </div>
                        </div>






</asp:Content>
