<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="author_management.aspx.cs" Inherits="ELibraryManagement.author_management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--Data Table Connect JS Script--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <h4 style="text-align:center;">Author Details</h4>
                                <center>
                                    <img width="100px" src="imgs/authorDetail.png" />
                                </center>
                            </div>
                        </div><hr>

                        <div class="row">
                            <div class="col-md-4">
                               <asp:Label Text="Author ID" runat="server" />
                                  <div class="form-group">
                                      <div class="input-group">
                                          <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Author ID"></asp:TextBox>
                                      </div>
                                  </div>
                           </div>
                            <div class="col-md-8">
                                <asp:Label Text="Author Name" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Author Name"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <asp:Button class="btn btn-success btn-lg btn-block" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-primary btn-lg btn-block" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-danger btn-lg btn-block" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                    <h4 style="text-align:center;">Author Lists</h4>
                                </center>
                            </div>
                        </div><hr>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-hover table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
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
