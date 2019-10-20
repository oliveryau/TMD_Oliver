<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeFile="CompanyUpdate.aspx.cs" Inherits="targeted_marketing_display.CompanyUpdate" EnableViewState="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Update Company</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <asp:Button ID="btnBack" class="btn btn-primary nextBtn pull-left" runat="server" Text="Back" OnClick="btnBack_Click" causesValidation="false" />

                <asp:Button ID="updateBtn" class="btn btn-primary nextBtn pull-right" runat="server" Text="Update" OnClick="updateBtn_Click" />
            </div>
        </div>

        <div runat="server" class="alert alert-success" id="alertSuccess" visible="False">
            <strong>Success!</strong> Company Information has been Updated.
        </div>
               
        <div runat="server" class="alert alert-danger" id="alertWarning" visible="False">
            <strong>Warning!</strong> Update Unsuccessful
        </div>

        <br />

        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <label>Company Name: </label>
                    <label style="color: red">*</label>
                    <asp:TextBox class="form-control" ID="CoName" placeholder="Enter company name" runat="server" MaxLength="255"></asp:TextBox> &nbsp;
                    <asp:RequiredFieldValidator ID="rfvCoName" runat="server" ControlToValidate="CoName" Display="Dynamic" ErrorMessage="Please enter company name" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="form-group">
                    <label>Industry: </label>
                    <label style="color: red">*</label>
                    <asp:DropDownList Class="form-control" ID="CoIndustry" runat="server"></asp:DropDownList>              
                    <asp:RequiredFieldValidator ID="rfvCoIndustry" runat="server" ControlToValidate="CoIndustry" Display="Dynamic" InitialValue="0" ErrorMessage="Please select company industry" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
