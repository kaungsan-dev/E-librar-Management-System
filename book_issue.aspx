<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="book_issue.aspx.cs" Inherits="ELibraryManagement.book_issue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--DATA TABLE CONNECT--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("
                < thead ></thead > ").append($(this).find("tr: first"))).dataTable();
       });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <h4 style="text-align:center;">Book Issuing</h4>
                                <center>
                                    <img width="150px" src="imgs/book.PNG" />
                                </center>
                            </div>
                        </div><hr>

                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label Text="Member ID" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-6">
                               <asp:Label Text="Book ID" runat="server" />
                                  <div class="form-group">
                                      <div class="input-group">
                                          <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Book ID"></asp:TextBox>
                                     <asp:Button class="btn btn-secondary"  ID="Button1" runat="server" Text="Go" OnClick="Button1_Click"></asp:Button>
                                      </div>
                                  </div>
                           </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label Text="Member Name" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                <asp:Label Text="Book Name" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                            </div>
                            
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                Issue Date<div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                Due Date<div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>
                            
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <asp:Button class="btn btn-danger btn-sm btn-block" ID="Button2" runat="server" Text="Issue" OnClick="Button2_Click" />
                            </div>
                            <div class="col-6">
                                <asp:Button class="btn btn-success btn-sm btn-block" ID="Button3" runat="server" Text="Return" OnClick="Button3_Click" />
                            </div>
                        </div>
                </div>
            </div>
        </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 style="text-align:center;">Book Issued Lists</h4>
                                </center>
                            </div>
                        </div><hr>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString6 %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-hover table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="End Date" SortExpression="due_date" />
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
