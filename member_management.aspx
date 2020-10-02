<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="member_management.aspx.cs" Inherits="ELibraryManagement.member_management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--Data Table Connect JS Script--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <h4 style="text-align:center;">Member Details</h4>
                                <center>
                                    <img width="150px" src="imgs/userLogin.png" />
                                </center>
                            </div>
                        </div><hr>

                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label Text="Member ID" runat="server" />
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                            <asp:LinkButton class="btn btn-primary btn-sm" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        </div>
                                    </div>
                            </div>

                            <div class="col-md-4">
                               <asp:Label Text="Name" runat="server" />
                                  <div class="form-group">
                                      <div class="input-group">
                                          <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Name" ReadOnly="True"></asp:TextBox>
                                      </div>
                                  </div>
                           </div>

                           <div class="col-md-5">
                               <asp:Label Text="Account Status" runat="server" />
                                  <div class="form-group">
                                      <div class="input-group">
                                          <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>

                                       <asp:LinkButton class="btn btn-success btn-sm mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>

                                       <asp:LinkButton class="btn btn-warning btn-sm mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>

                                        <asp:LinkButton class="btn btn-danger btn-sm mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="far fa-times-circle"></i></asp:LinkButton>

                                      </div>
                                  </div>
                           </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label Text="Date Of Birth" runat="server" />
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"    placeholder="DOB" ReadOnly="True" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>
                            
                            <div class="col-md-4">
                                <asp:Label Text="Contact No" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" ReadOnly="True" TextMode="Phone"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-5">
                                <asp:Label Text="Email" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Email" ReadOnly="True" TextMode="Email"></asp:TextBox>
                                    </div>
                            </div>
                            
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:Label Text="Address" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"  placeholder="Address" ReadOnly="True" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 btn-sm">
                                <asp:Button class="btn btn-danger btn-sm btn-block" ID="Button2" runat="server" Text="Delete Permantely" OnClick="Button2_Click" />
                            </div>
                        </div>
                </div>
            </div>
        </div>

            <div class="col-md-12">
                <div class="card" style="margin:10px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 style="text-align:center;">Member List</h4>
                                </center>
                            </div>
                        </div><hr>

                        <div class="row col-md-12 container-fluid">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString4 %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-hover table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="member_id" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                        <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                        <asp:BoundField DataField="full_address" HeaderText="full_address" SortExpression="full_address" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                </div>
            </div>
            </div>
        </div>
    </div>
</asp:Content>
