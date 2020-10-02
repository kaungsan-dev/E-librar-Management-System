<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ELibraryManagement.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/userLogin.png" />
                                    <h4 style="text-align:center;">User Profile</h4>
                                    <span>Account Status - </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your Status"></asp:Label>
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
                           <div class="col-md-4">
                               <asp:Label Text="User ID" runat="server" />
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                  </div>
                           </div>
                           <div class="col-md-4">
                               <asp:Label Text="Old Password" runat="server" />
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"    placeholder="Old Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                   </div>
                            </div>
                            <div class="col-md-4">
                               <asp:Label Text="New Password" runat="server" />
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder=" New Password" TextMode="Password"></asp:TextBox>

                                   </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12 mx-auto">
                                <center>
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-primary btn-lg btn-block" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click"></asp:Button>
                                    </div>
                            </center>
                            </div>
                            
                        </div>
                </div>
            </div>
        </div>
           
            <%-- <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/logo.png" />
                                    <h4 style="text-align:center;">Issued Books</h4>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Info About due date"></asp:Label>
                                </center>
                            </div>
                        </div><hr>
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-hover table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                </div>
            </div>
            </div> --%>

        </div>
    </div>

</asp:Content>
