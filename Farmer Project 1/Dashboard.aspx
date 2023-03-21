<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Farmer_Project_1.Dashboard" %>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <body>
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
                    <a href="AdminLogin.aspx" class="nav-item nav-link">Logout</a>
                
                        <%--<asp:Button ID="Button1" runat="server" class="nav-item nav-link bg-transparent border-0" Text="Logout" OnClick="Button1_Click" />--%>
    
                    
                </div>
            </div>
        </nav>
        <!-- Navbar End -->

        <div class="" style="margin:100px 200px;margin-bottom: 150px;">
            <h1 class="mx-5 mt-3">User Details</h1>
            <div>
                    <form method="post" runat="server">

                <asp:GridView class="m-5 w-75" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                <alternatingrowstyle backcolor="White" forecolor="#284775" />
                <columns>
                    <asp:TemplateField HeaderText="name">
                        <itemtemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="mobileno">
                        <itemtemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("mobileno") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="email">
                        <itemtemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="password">
                        <itemtemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                        </itemtemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="cmd_delete_signup" CommandArgument='<%# Eval("id") %>'>Delete</asp:LinkButton>
                        </ItemTemplate>
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
                </form>
            </div>
        </div>
</asp:Content>

<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder3">




    <!-- Back to Top -->
    <a href="#" class="btn btn-secondary py-3 fs-4 back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    </body>

</html>
</asp:Content>


