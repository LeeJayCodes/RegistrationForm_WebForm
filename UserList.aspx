<%@ Page Title="" Language="C#" MasterPageFile="~/site1.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="RegistrationForm.UserList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5">
        <div class="container">
            <div class="row justify-content-md-center">
                <h2>User List</h2>

                <asp:PlaceHolder ID="ph1" runat="server">
                    <asp:Table ID='UserTable' runat='server' CssClass='table table-dark'>
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Phone</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Address</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                    </asp:Table>
                </asp:PlaceHolder>
            </div>
        </div>
    </div>



</asp:Content>
