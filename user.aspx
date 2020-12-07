<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="tour.user1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
              <h2 style="text-align:center; "  class="auto-style7" >Add Users</h2>

  
    <div class="auto-style8" style="text-align:right;">
    <div class="form-horizontal" >
        <br/><br/><br/>
        <hr/>

         <div class="form-group" >
             <asp:Label ID="lblaid" cssClass="col-md-4 control-label" runat="server" Text="Agency Id"></asp:Label>
            
                        <div class="col-md-3" style="text-align:center;">                          
                            <asp:TextBox ID="txtaid"  cssclass="form-control"  runat="server"></asp:TextBox> <br/>
                           </div>
                        </div>
         <div class="form-group">
             <asp:Label ID="lblusername" cssClass="col-md-4 control-label" runat="server" Text="Username"></asp:Label>
                    <div class="col-md-3">                      
                            <asp:TextBox ID="txtuname"  cssclass="form-control"  runat="server"></asp:TextBox> <br/>
                           </div>
                        </div>
         <div class="form-group">
             <asp:Label ID="lblpass" cssClass="col-md-4 control-label" runat="server" Text="Password"></asp:Label>
                        <div class="col-md-3">
                                                 
                            <asp:TextBox ID="Password"  cssclass="form-control"  runat="server"></asp:TextBox> <br/>
                           

                        </div>
                        </div>
         <div class="form-group">
             <asp:Label ID="lblemail" cssClass="col-md-4 control-label" runat="server" Text="Email"></asp:Label>
            
                        <div class="col-md-3">

                           
                            <asp:TextBox ID="txtemail"  cssclass="form-control"  runat="server"></asp:TextBox> <br/>
                           

                        </div>
                        </div>



         <div class="form-group">
             <asp:Label ID="lbla" cssClass="col-md-4 control-label" runat="server" Text="Full Name"></asp:Label>
            
                        <div class="col-md-3">

                           
                            <asp:TextBox ID="txtadda"  cssclass="auto-style9"  runat="server"></asp:TextBox> <br/>
                           

                        </div>
                        </div>
          <div class="form-group">
            <div class="auto-style10">
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
                        <div class="auto-style12">
                            <asp:Button ID="btnadda" runat="server" cssClass="btn btn-success" Text="Add User" OnClick="btnadda_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnupdate" runat="server" cssClass="btn btn-success"  Text="Update" OnClick="btnupdate_Click"   />
&nbsp;&nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnsearchs" runat="server" cssClass="btn btn-success"  Text="Search" OnClick="btnsearchs_Click"    />
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
            <div class="col-md-4" style="left: 0px; top: 0px"></div>
                        <div class="col-md-7">
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            <table class="nav-justified">
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical"  style="margin-right: 22px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="640px" Height="287px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" >
                                            <AlternatingRowStyle BackColor="#DCDCDC" />
                                            <Columns>
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="uid" HeaderText="Agency Id">
                                                <ControlStyle BorderColor="#66FFCC" BorderStyle="Solid" ForeColor="#CCFFCC"  />
                                                </asp:BoundField>
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="uname" HeaderText="User Name" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="Password" HeaderText="Password" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="Email" HeaderText="Email" />
                                                <asp:BoundField ItemStyle-HorizontalAlign="Justify" DataField="Name" HeaderText="Full Name" />
                                                <asp:TemplateField ItemStyle-HorizontalAlign="Justify" HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btnedit" runat="server"  Text="Edit" OnClick="btnedit_Click"   />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField ItemStyle-HorizontalAlign="Justify" HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#000065" />
                                        </asp:GridView>
                                    </td>
                                    
                            </table>
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
            width: 493px;
        position: absolute;
        top: 50px;
        left: 191px;
    }
        .auto-style8 {
            width: 637px;
            top: 75px;
            position: absolute;
            left: 186px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        height: 1044px;
    }
        .auto-style9 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
        }
        .auto-style10 {
            position: relative;
            min-height: 1px;
            float: left;
            width: -2147483648%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style11 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 95%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style12 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 89%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>

