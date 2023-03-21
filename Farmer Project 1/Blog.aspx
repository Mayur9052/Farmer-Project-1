<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Farmer_Project_1.Blog" %>

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
                                <a href="Blog.aspx" class="dropdown-item active">Blog Grid</a>
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
                            <h1 class="display-1 text-white mb-md-4">Blog Grid</h1>
                            <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
                            <a href="" class="btn btn-secondary py-md-3 px-md-5">Blog Grid</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero End -->


            <!-- Blog Start -->
            <div class="container py-5">
                <div class="row g-5">
                    <!-- Blog list Start -->
                    <div class="col-lg-8">
                        
                                <div class="row g-5">
                                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                    <div class="col-md-10">
                                        <div class="blog-item position-relative overflow-hidden">
                                            <img class="img-fluid  w-100 h-100" src="img/blog-1.jpg" alt="">
                                            <a class="blog-overlay" href="">
                                                <h4 class="text-white"><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></h4>
                                                <span class="text-white fw-bold"><asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' /></span>
                                                <p class="text-white mt-3"><asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' /></p>
                                            </a>
                                        </div>
                                    </div>
                                </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [blog]"></asp:SqlDataSource>
                                </div>
                    
                                </div>
            <!-- Blog list End -->

                                <%--<div>
                                    Id:
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                    <br />
                                    name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                    <br />
                                    email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                    <br />
                                    subject:
                        <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
                                    <br />
                                    comment:
                        <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
                                    <br />
                                    <br />
                            </div>--%>

                    <!-- Sidebar Start -->
                    <div class="col-lg-4">
                        <!-- Search Form Start -->
                        <div class="mb-5">
                            <div class="input-group">
                                <input type="text" class="form-control p-3" placeholder="Keyword">
                                <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                            </div>
                        </div>
                        <!-- Search Form End -->

                        <!-- Category Start -->
                        <div class="mb-5">
                            <h2 class="mb-4">Categories</h2>
                            <div class="d-flex flex-column justify-content-start bg-primary p-4">
                                <a class="fs-5 fw-bold text-white mb-2" href="#"><i class="bi bi-arrow-right me-2"></i>Web Design</a>
                                <a class="fs-5 fw-bold text-white mb-2" href="#"><i class="bi bi-arrow-right me-2"></i>Web Development</a>
                                <a class="fs-5 fw-bold text-white mb-2" href="#"><i class="bi bi-arrow-right me-2"></i>Web Development</a>
                                <a class="fs-5 fw-bold text-white mb-2" href="#"><i class="bi bi-arrow-right me-2"></i>Keyword Research</a>
                                <a class="fs-5 fw-bold text-white" href="#"><i class="bi bi-arrow-right me-2"></i>Email Marketing</a>
                            </div>
                        </div>
                        <!-- Category End -->

                        <!-- Recent Post Start -->
                        <div class="mb-5">
                            <h2 class="mb-4">Recent Post</h2>
                            <div class="bg-primary p-4">
                                <div class="d-flex overflow-hidden mb-3">
                                    <img class="img-fluid flex-shrink-0" src="img/blog-1.jpg" style="width: 75px;" alt="">
                                    <a href="" class="d-flex align-items-center bg-white text-dark fs-5 fw-bold px-3 mb-0">Lorem ipsum dolor sit amet elit
                                    </a>
                                </div>
                                <div class="d-flex overflow-hidden mb-3">
                                    <img class="img-fluid flex-shrink-0" src="img/blog-2.jpg" style="width: 75px;" alt="">
                                    <a href="" class="d-flex align-items-center bg-white text-dark fs-5 fw-bold px-3 mb-0">Lorem ipsum dolor sit amet elit
                                    </a>
                                </div>
                                <div class="d-flex overflow-hidden mb-3">
                                    <img class="img-fluid flex-shrink-0" src="img/blog-3.jpg" style="width: 75px;" alt="">
                                    <a href="" class="d-flex align-items-center bg-white text-dark fs-5 fw-bold px-3 mb-0">Lorem ipsum dolor sit amet elit
                                    </a>
                                </div>
                                <div class="d-flex overflow-hidden mb-3">
                                    <img class="img-fluid flex-shrink-0" src="img/blog-1.jpg" style="width: 75px;" alt="">
                                    <a href="" class="d-flex align-items-center bg-white text-dark fs-5 fw-bold px-3 mb-0">Lorem ipsum dolor sit amet elit
                                    </a>
                                </div>
                                <div class="d-flex overflow-hidden">
                                    <img class="img-fluid flex-shrink-0" src="img/blog-2.jpg" style="width: 75px;" alt="">
                                    <a href="" class="d-flex align-items-center bg-white text-dark fs-5 fw-bold px-3 mb-0">Lorem ipsum dolor sit amet elit
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- Recent Post End -->

                        <!-- Image Start -->
                        <div class="mb-5">
                            <img src="img/blog-1.jpg" alt="" class="img-fluid rounded">
                        </div>
                        <!-- Image End -->

                        <!-- Tags Start -->
                        <div class="mb-5">
                            <h2 class="mb-4">Tag Cloud</h2>
                            <div class="d-flex flex-wrap m-n1">
                                <a href="" class="btn btn-primary m-1">Design</a>
                                <a href="" class="btn btn-primary m-1">Development</a>
                                <a href="" class="btn btn-primary m-1">Marketing</a>
                                <a href="" class="btn btn-primary m-1">SEO</a>
                                <a href="" class="btn btn-primary m-1">Writing</a>
                                <a href="" class="btn btn-primary m-1">Consulting</a>
                                <a href="" class="btn btn-primary m-1">Design</a>
                                <a href="" class="btn btn-primary m-1">Development</a>
                                <a href="" class="btn btn-primary m-1">Marketing</a>
                                <a href="" class="btn btn-primary m-1">SEO</a>
                                <a href="" class="btn btn-primary m-1">Writing</a>
                                <a href="" class="btn btn-primary m-1">Consulting</a>
                            </div>
                        </div>
                        <!-- Tags End -->

                        <!-- Plain Text Start -->
                        <div>
                            <h2 class="mb-4">Plain Text</h2>
                            <div class="bg-primary text-center text-white" style="padding: 30px;">
                                <p>Vero sea et accusam justo dolor accusam lorem consetetur, dolores sit amet sit dolor clita kasd justo, diam accusam no sea ut tempor magna takimata, amet sit et diam dolor ipsum amet diam</p>
                                <a href="" class="btn btn-secondary py-2 px-4">Read More</a>
                            </div>
                        </div>
                        <!-- Plain Text End -->
                    </div>
                    <!-- Sidebar End -->
                </div>
            </div>
            <!-- Blog End -->
    </form>
</asp:Content>

