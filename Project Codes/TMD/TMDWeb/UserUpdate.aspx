<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeFile="UserUpdate.aspx.cs" Inherits="targeted_marketing_display.UserUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
      

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Update User</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <asp:Button ID="btnBack" class="btn btn-primary nextBtn pull-left" runat="server" Text="Back" OnClick="btnBack_Click" causesValidation="false"/>

                    <asp:Button ID="btnUpdate" class="btn btn-primary nextBtn pull-right" runat="server" Text="Update" OnClick="btnUpdate_Click"/>
                </div>
            </div>

            <br />

            <div runat="server" class="alert alert-success" id="alertSuccess" visible="False">
                <strong>Success!</strong> 
                <asp:Label runat="server" ID="msgSuccess"></asp:Label>
                <button type="button" class="close" onclick="window.location.href='UserList.aspx';">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <label>Name: </label>
                        <label style="color: red">*</label>
                        <asp:TextBox class="form-control" ID="tbName" placeholder="Enter Name" runat="server"></asp:TextBox>&nbsp;
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="tbName" Display="Dynamic" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="tbName" Display="Dynamic" ErrorMessage="Please Enter A Valid Name." ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="form-group">
                        <label>Contact Number: </label>
                        <label style="color: red">*</label>
                        <asp:TextBox class="form-control" ID="tbContact" placeholder="Enter Contact No." runat="server"></asp:TextBox>&nbsp;
                        <asp:RequiredFieldValidator ID="rfvConNo" runat="server" ControlToValidate="tbContact" Display="Dynamic" ErrorMessage="Please Enter Contact Number." ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revConNo" runat="server" ControlToValidate="tbContact" Display="Dynamic" ErrorMessage="Please Enter A Valid 8 Digits Contact Number & Begins With The Number 8 or 9." ValidationExpression="^[89]\d{7}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
    </form>
</asp:Content>