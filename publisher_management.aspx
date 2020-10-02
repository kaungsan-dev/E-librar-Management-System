<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="publisher_management.aspx.cs" Inherits="ELibraryManagement.publisher_management" %>
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
                                <h4 style="text-align:center;">Publisher Details</h4>
                                <center>
                                    <img width="100px" src="imgs/publisher.png" />
                                </center>
                            </div>
                        </div><hr>

                        <div class="row">
                            <div class="col-md-4">
                               <asp:Label Text="Publisher ID" runat="server" />
                                  <div class="form-group">
                                      <div class="input-group">
                                          <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Publisher ID"></asp:TextBox>
                                      </div>
                                  </div>
                           </div>
                            <div class="col-md-8">
                                <asp:Label Text="Publisher Name" runat="server" />
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Publisher Name"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <asp:Button class="btn btn-success btn-sm btn-block" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-primary btn-sm btn-block" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-danger btn-sm btn-block" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                    <h4 style="text-align:center;">Publisher Lists</h4>
                                </center>
                            </div>
                        </div><hr>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString3 %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-hover table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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
