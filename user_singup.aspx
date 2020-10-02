<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user_singup.aspx.cs" Inherits="ELibraryManagement.user_singup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/userLogin.png" />
                                    <h4 style="text-align:center;">User Registration</h4>
                                </center>
                            </div>
                        </div><hr>

                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label Text="Name" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                <asp:Label Text="Date Of Birth" runat="server" />
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"    placeholder="DOB" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label Text="Contact Number" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact Number" TextMode="Phone"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                <asp:Label Text="Email" runat="server" />
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"    placeholder="Email" TextMode="Email"></asp:TextBox>
                                    </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Label Text="Address" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"  placeholder="Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <span class="badge badge-pill badge-danger" style="text-align:center;">Login Canditials</span>
                                    </center>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                           <div class="col-md-6">
                               <asp:Label Text="Member ID" runat="server" />
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="User ID"></asp:TextBox>
                                  </div>
                           </div>
                           <div class="col-md-6">
                               <asp:Label Text="Password" runat="server" />
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"    placeholder="Password" TextMode="Password"></asp:TextBox>
                                   </div>
                            </div>
                    </div>
                        <div class="form-group">
                            <asp:Button class="btn btn-outline-success btn-sm btn-block" ID="Button1" runat="server" Text="SingUp" OnClick="Button1_Click" />
                        </div>
                </div>

                <a href="homepage.aspx"><< Back To Home</a>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
