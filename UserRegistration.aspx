<%@ Page Title="" Language="C#" MasterPageFile="~/site1.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="RegistrationForm.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5">
        <div class="container">
            <div class="row justify-content-md-center col-lg-">
                <h2>Registration</h2>
                <form runat="server">
                    <div class="form-group">
                        <label for="InputName">Name</label>
                        <asp:TextBox runat="server" class="form-control form-text" ID="InputName" placeholder="Enter Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequriedFieldValidator1" runat="server" font-size="Medium" ForeColor="red" display="Dynamic" ControlTovalidate="InputName" ErrorMessage="Please Enter Your Name"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <asp:TextBox runat="server" class="form-control" ID="InputEmail" aria-describedby="emailHelp" placeholder="Enter email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" font-size="Medium" ForeColor="red" display="Dynamic" ControlTovalidate="InputEmail" ErrorMessage="Please Enter Your Email"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" font-size="Medium" ForeColor="red" display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="InputEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                    </div>

                    <div class="form-group">
                        <label for="InputPhone">Phone</label>
                        <asp:TextBox runat="server" class="form-control form-text" ID="InputPhone" placeholder="Enter Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" font-size="Medium" ForeColor="red" display="Dynamic" ControlTovalidate="InputPhone" ErrorMessage="Please Enter Your Phone Number"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label for="InputAddress">Address</label>
                        <asp:TextBox runat="server" class="form-control form-text" ID="InputAddress" placeholder="Enter Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" font-size="Medium" ForeColor="red" display="Dynamic" ControlTovalidate="InputAddress" ErrorMessage="Please Enter Your Address"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                    </div>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                </form>
                
            </div>
        </div>
    </div>


</asp:Content>
