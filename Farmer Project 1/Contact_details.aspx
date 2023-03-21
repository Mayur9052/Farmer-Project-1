<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact_details.aspx.cs" Inherits="Farmer_Project_1.Contact_details" %>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <form id="form1" runat="server">

    <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-primary navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-5">
            <a class="navbar-brand d-flex d-lg-none" href="index.html">
            <h1 class="m-0 display-4 text-secondary"><span class="text-white">Farm</span>Fresh</h1>
            </a>
            <button class="navbar-toggler" data-bs-target="#navbarCollapse" data-bs-toggle="collapse" type="button">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div id="navbarCollapse" class="collapse navbar-collapse">
                <div class="navbar-nav mx-auto py-0">
                    <a href="Index.aspx" class="nav-item nav-link">Home</a>
                    <%--<a href="About.aspx" class="nav-item nav-link">About</a>--%>
                        <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Products</a>
                        <div class="dropdown-menu m-0">
                            <a href="Add_product.aspx" class="dropdown-item">Add Products</a>
                            <a href="Product_details.aspx" class="dropdown-item">Products Details</a>
                        </div>
                    </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Team</a>
                    <div class="dropdown-menu m-0">
                        <a href="Team.aspx" class="dropdown-item">Add Team</a>
                        <a href="Team_details.aspx" class="dropdown-item">Team Detail</a>
                    </div>
                    </div>
                
                    <a href="Blog_details.aspx" class="nav-item nav-link">Blog</a>
                    <a href="Contact_details.aspx" class="nav-item nav-link">Contact</a
                </div>
            </div>
        </nav>
    <!-- Navbar End -->
        <br />
        <br />
        <div class="" style="margin:100px 200px;margin-bottom: 150px;">
            <h1 class="mx-5 mt-3">Contact Details</h1>
            <asp:GridView class="w-75" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
                <alternatingrowstyle backcolor="White" forecolor="#284775" />
                <columns>
                    <asp:TemplateField HeaderText="name">
                        <itemtemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="email">
                        <itemtemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="subject">
                        <itemtemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("subject") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="message">
                        <itemtemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("message") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                            <%--<asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="cmd_update_contact">Update</asp:LinkButton>--%>
                            <a href="Contact_update.aspx?Id=<%# Eval("id") %>">Update</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <itemtemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="cmd_delete">Delete</asp:LinkButton>
                        </itemtemplate>
                    </asp:TemplateField>
                </columns>
                <editrowstyle backcolor="#999999" />
                <footerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                <headerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                <pagerstyle backcolor="#284775" forecolor="White" horizontalalign="Center" />
                <rowstyle backcolor="#F7F6F3" forecolor="#333333" />
                <selectedrowstyle backcolor="#E2DED6" font-bold="True" forecolor="#333333" />
                <sortedascendingcellstyle backcolor="#E9E7E2" />
                <sortedascendingheaderstyle backcolor="#506C8C" />
                <sorteddescendingcellstyle backcolor="#FFFDF8" />
                <sorteddescendingheaderstyle backcolor="#6F8DAE" />
            </asp:GridView>
        </div>
    </form>
</asp:Content>

