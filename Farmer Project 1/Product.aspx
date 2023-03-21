<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Farmer_Project_1.Product" %>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <form id="form1" runat="server">
        <body>
            <!-- Topbar Start -->
            <div class="container-fluid px-5 d-none d-lg-block">
                <div class="row gx-5 py-3 align-items-center">
                    <div class="col-lg-3">
                        <div class="d-flex align-items-center justify-content-start">
                            <i class="bi bi-phone-vibrate fs-1 text-primary me-2"></i>
                            <h2 class="mb-0">+012 345 6789</h2>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="d-flex align-items-center justify-content-center">
                            <a href="index.html" class="navbar-brand ms-lg-5">
                                <h1 class="m-0 display-4 text-primary"><span class="text-secondary">Farm</span>Fresh</h1>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="d-flex align-items-center justify-content-end">
                            <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a class="btn btn-primary btn-square rounded-circle" href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Topbar End -->


            <!-- Navbar Start -->
            <nav class="navbar navbar-expand-lg bg-primary navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-5">
                <a href="Index.aspx" class="navbar-brand d-flex d-lg-none">
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
                        <a href="Product.aspx" class="nav-item nav-link active">Product</a>
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
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu m-0">
                                <a href="Blog.aspx" class="dropdown-item">Blog Grid</a>
                                <a href="Detail.aspx" class="dropdown-item">Blog Detail</a>
                                <a href="Feature.aspx" class="dropdown-item">Features</a>
                                <a href="Team.aspx" class="dropdown-item">The Team</a>
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
                            <h1 class="display-1 text-white mb-md-4">Our Products</h1>
                            <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
                            <a href="" class="btn btn-secondary py-md-3 px-md-5">Products</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero End -->


            <!-- Team Start -->
            <div class="container-fluid py-5">
                <div class="container">
                    <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                        <h1 class="text-primary text-uppercase">Products</h1>
                    </div>
                    <div class="row g-5">
                        <div class="col-lg-4 col-md-6">
                            <div class="row g-0">

                                <div class="col-10">
                                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
                                        <ItemTemplate>
                                        <a href="Product_content.aspx?name=<%# Eval("name") %>">
                                            <div class="position-relative m-4">

                                                <%--<img class="img-fluid w-100" src="img/team-1.jpg" alt="">--%>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="250" Height="250" />
                                                <div class="position-absolute start-0 bottom-0 w-100 py-3 px-4" style="background: rgba(52, 173, 84, .85);">
                                                    <%--<h4 class="text-white">Farmer Name</h4>--%>
                                                    <h4 class="text-white">
                                                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></h4>
                                                    <%--<span class="text-white">Designation</span>--%>
                                                    <span class="text-white">
                                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></span>
                                                </div>
                                            </div>
                                            </a>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [price], [image] FROM [Add_product]"></asp:SqlDataSource>


                                    <%--  name:
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                    <br />
                                    price:
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                    <br />
                                    image:
                                    <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                                    <br />--%>
                                    <br />
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Team End -->


            <!-- Features Start -->
            <div class="container-fluid bg-primary feature py-5 pb-lg-0 mt-5" style="margin-bottom: 135px;">
                <div class="container py-5 pb-lg-0">
                    <div class="mx-auto text-center mb-3 pb-2" style="max-width: 500px;">
                        <h6 class="text-uppercase text-secondary">Features</h6>
                        <h1 class="display-5 text-white">Why Choose Us!!!</h1>
                    </div>
                    <div class="row g-5">
                        <div class="col-lg-3">
                            <div class="text-white mb-5">
                                <div class="bg-secondary rounded-pill d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                                    <i class="fa fa-seedling fs-4 text-white"></i>
                                </div>
                                <h4 class="text-white">100% Organic</h4>
                                <p class="mb-0">Labore justo vero ipsum sit clita erat lorem magna clita</p>
                            </div>
                            <div class="text-white">
                                <div class="bg-secondary rounded-pill d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                                    <i class="fa fa-award fs-4 text-white"></i>
                                </div>
                                <h4 class="text-white">Award Winning</h4>
                                <p class="mb-0">Labore justo vero ipsum sit clita erat lorem magna clita</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="d-block bg-white h-100 text-center p-5 pb-lg-0">
                                <p>At et justo elitr amet sea at. Magna et sit vero at ipsum sit et dolores rebum. Magna sea eos sit dolor, ipsum amet no tempor ipsum eirmod lorem eirmod diam tempor dolor eos diam et et diam dolor ea. Clita est rebum amet dolore sit. Dolor stet dolor duo clita, vero dolor ipsum amet dolore magna lorem erat stet sed vero dolor</p>
                                <img class="img-fluid" src="img/feature.png" alt="">
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="text-white mb-5">
                                <div class="bg-secondary rounded-pill d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                                    <i class="fa fa-tractor fs-4 text-white"></i>
                                </div>
                                <h4 class="text-white">Modern Farming</h4>
                                <p class="mb-0">Labore justo vero ipsum sit clita erat lorem magna clita</p>
                            </div>
                            <div class="text-white">
                                <div class="bg-secondary rounded-pill d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                                    <i class="fa fa-phone-alt fs-4 text-white"></i>
                                </div>
                                <h4 class="text-white">24/7 Support</h4>
                                <p class="mb-0">Labore justo vero ipsum sit clita erat lorem magna clita</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Features Start -->
    </form>
</asp:Content>

