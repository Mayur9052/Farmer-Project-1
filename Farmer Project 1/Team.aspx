<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="Farmer_Project_1.Team" %>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    
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
                <a href="About.aspx" class="nav-item nav-link">About</a>
                <a href="Service.aspx" class="nav-item nav-link">Service</a>
                <a href="Product.aspx" class="nav-item nav-link">Product</a>
                 <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Categories</a>
                    <div class="dropdown-menu m-0">
                        <a href="Seeds_product.aspx" class="dropdown-item">Seeds</a>
                        <a href="Grains_product.aspx" class="dropdown-item">Grains</a>
                        <a href="Machinery_product.aspx" class="dropdown-item">Machinery</a>
                        <a href="Pesticides.aspx" class="dropdown-item">Pesticides</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu m-0">
                        <a href="Blog.aspx" class="dropdown-item">Blog Grid</a>
                        <a href="Detail.aspx" class="dropdown-item">Blog Detail</a>
                        <a href="Feature.aspx" class="dropdown-item">Features</a>
                        <a href="Team.aspx" class="dropdown-item active">The Team</a>
                        <a href="Testimonial.aspx" class="dropdown-item">Testimonial</a>
                    </div>
                </div>
                <a href="Contact.aspx" class="nav-item nav-link">Contact</a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero mb-5">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-white mb-md-4">The Team</h1>
                    <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
                    <a href="" class="btn btn-secondary py-md-3 px-md-5">The Team</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->

    <div class="col-lg-7" style="position:relative; left:300px;" >
                    <div class="bg-primary h-100 p-5">
                        <form runat="server" method="post" action=""> 
                            <div class="row g-3">
                                <div class="col-6">
                                    <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Your Name" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your First Name" style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-6">
                                    <%--<input type="email" class="form-control bg-light border-0 px-4" placeholder="Your Email" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Last Name" style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-12 text-black bg-light w-25 mx-2 pt-2 ">
                                    <asp:Label ID="Label1" runat="server" Text="Gender" class="text-black mx-4"></asp:Label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="text-black m-4 mt-2 mx-5">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>

                                <div class="col-12">
                                    <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Subject" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Email" style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Subject" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Designation" style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<textarea class="form-control bg-light border-0 px-4 py-3" rows="2" placeholder="Message"></textarea>--%>
                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control bg-light border-0 px-4 py-3" rows="2" placeholder="Your Description"></asp:TextBox>
                                </div>
                                <div class="col-8">
                                    <asp:FileUpload ID="FileUpload1" runat="server" class="text-white form-control"/>
                                </div>
                                <div class="col-12">
                                    <%--<button class="btn btn-secondary w-100 py-3" type="submit">Send Message</button>--%>
                                    <asp:Button ID="Button1" runat="server" Text="Create" class="btn btn-secondary w-100 py-3" 5 OnClick="Button1_Click"  />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                </asp:Content>

