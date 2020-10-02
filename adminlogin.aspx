<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ELibraryManagement.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="200px" src="imgs/adminLogin.png" />
                                    <h4 style="text-align:center;">Admin Login</h4>
                                </center>
                            </div>
                        </div><hr>

                        <asp:Label Text="Member ID" runat="server" />
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                        <asp:Label Text="Password" runat="server" />
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button class="btn btn-outline-primary btn-lg btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>

                <a href="homepage.aspx"><< Back To Home</a>
            </div>
        </div>
    </div>
</asp:Content>
