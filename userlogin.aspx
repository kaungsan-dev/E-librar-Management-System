<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ELibraryManagement.userlogin" %>
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
                                    <img width="200px" src="imgs/userLogin.png" />
                                    <h4 style="text-align:center;">Member Login</h4>
                                </center>
                            </div>
                        </div><hr>

                        <asp:Label Text="Member ID" runat="server" />
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                        </div>
                        <asp:Label Text="Password" runat="server" />
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button class="btn btn-outline-primary btn-lg btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        </div>
                        <div class="form-group">
                            <a href="user_singup.aspx">
                                <input class="btn btn-outline-success btn-lg btn-block" id="Button2" type="button" value="SingUp" />
                            </a>
                            
                        </div>
                    </div>
                </div>

                <a href="homepage.aspx"><< Back To Home</a>
            </div>
        </div>
    </div>
</asp:Content>
