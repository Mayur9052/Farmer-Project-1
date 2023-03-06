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
                    <a class="nav-item nav-link" href="Index.aspx">Home</a> <a class="nav-item nav-link" href="About.aspx">About</a> <a class="nav-item nav-link" href="Service.aspx">Service</a> <a class="nav-item nav-link" href="Product.aspx">Product</a>
                    <div class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#">Pages</a>
                        <div class="dropdown-menu m-0">
                            <a class="dropdown-item" href="Blog.aspx">Blog Grid</a> <a class="dropdown-item" href="Detail.aspx">Blog Detail</a> <a class="dropdown-item" href="Feature.aspx">Features</a> <a class="dropdown-item" href="Team.aspx">The Team</a> <a class="dropdown-item" href="Testimonial.aspx">Testimonial</a>
                        </div>
                    </div>
                    <a class="nav-item nav-link active" href="Contact.aspx">Contact</a>
                </div>
            </div>
        </nav>
    <!-- Navbar End -->
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="email">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="subject">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("subject") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="message">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("message") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="cmd_delete">Delete</asp:LinkButton>
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
    </form>
</asp:Content>

