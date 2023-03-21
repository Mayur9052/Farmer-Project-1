﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Blog_details.aspx.cs" Inherits="Farmer_Project_1.Blog_details" %>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <form id="form1" runat="server">
    <body>
    <!-- Navbar Start -->
       
    <!-- Navbar Start -->
           <nav class="navbar navbar-expand-lg bg-primary navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-5">
        <a href="index.html" class="navbar-brand d-flex d-lg-none">
            <h1 class="m-0 display-4 text-secondary"><span class="text-white">Farm</span>Fresh</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
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
    <!-- Navbar End -->
        <div class="" style="margin:100px 200px;margin-bottom: 150px;">
            <h1 class="mx-5 mt-3">Blog Details</h1>
        
        <asp:GridView ID="GridView1" class="w-100" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Subject">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("subject") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Comment">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("comment") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Update">
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="cmd_update_blog">update</asp:LinkButton>--%>
                        <a href="Blog_update.aspx?Id=<%# Eval("id") %>">Update</a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="cmd_delete_blog">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

        </asp:GridView>
            </div>
    </form>
</asp:Content>

