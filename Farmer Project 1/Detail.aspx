﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="Farmer_Project_1.Detail" %>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    
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
                        <a href="Blog.aspx" class="dropdown-item">Blog Grid</a>
                        <a href="Detail.aspx" class="dropdown-item active">Blog Detail</a>
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
                    <h1 class="display-1 text-white mb-md-4">Blog Detail</h1>
                    <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
                    <a href="" class="btn btn-secondary py-md-3 px-md-5">Blog Detail</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Blog Start -->
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <!-- Blog Detail Start -->
                <div class="mb-5">
                    <div class="row g-5 mb-5">
                        <div class="col-md-6">
                            <img class="img-fluid w-100" src="img/blog-1.jpg" alt="">
                        </div>
                        <div class="col-md-6">
                            <img class="img-fluid w-100" src="img/blog-2.jpg" alt="">
                        </div>
                    </div>
                    <h1 class="mb-4">Diam dolor est labore duo ipsum clita sed et lorem tempor duo</h1>
                    <p>Sadipscing labore amet rebum est et justo gubergren. Et eirmod ipsum sit diam ut
                        magna lorem. Nonumy vero labore lorem sanctus rebum et lorem magna kasd, stet
                        amet magna accusam consetetur eirmod. Kasd accusam sit ipsum sadipscing et at at
                        sanctus et. Ipsum sit gubergren dolores et, consetetur justo invidunt at et
                        aliquyam ut et vero clita. Diam sea sea no sed dolores diam nonumy, gubergren
                        sit stet no diam kasd vero.</p>
                    <p>Voluptua est takimata stet invidunt sed rebum nonumy stet, clita aliquyam dolores
                        vero stet consetetur elitr takimata rebum sanctus. Sit sed accusam stet sit
                        nonumy kasd diam dolores, sanctus lorem kasd duo dolor dolor vero sit et. Labore
                        ipsum duo sanctus amet eos et. Consetetur no sed et aliquyam ipsum justo et,
                        clita lorem sit vero amet amet est dolor elitr, stet et no diam sit. Dolor erat
                        justo dolore sit invidunt.</p>
                    <p>Diam dolor est labore duo invidunt ipsum clita et, sed et lorem voluptua tempor
                        invidunt at est sanctus sanctus. Clita dolores sit kasd diam takimata justo diam
                        lorem sed. Magna amet sed rebum eos. Clita no magna no dolor erat diam tempor
                        rebum consetetur, sanctus labore sed nonumy diam lorem amet eirmod. No at tempor
                        sea diam kasd, takimata ea nonumy elitr sadipscing gubergren erat. Gubergren at
                        lorem invidunt sadipscing rebum sit amet ut ut, voluptua diam dolores at
                        sadipscing stet. Clita dolor amet dolor ipsum vero ea ea eos.</p>
                </div>
                <!-- Blog Detail End -->

                <!-- Comment List Start -->
                <div class="mb-5">
                    <h2 class="mb-4">3 Comments</h2>
                    <div class="d-flex mb-4">
                        <img src="img/user.jpg" class="img-fluid" style="width: 45px; height: 45px;">
                        <div class="ps-3">
                            <h6><a href="">John Doe</a> <small><i>01 Jan 2045</i></small></h6>
                            <p>Diam amet duo labore stet elitr invidunt ea clita ipsum voluptua, tempor labore
                                accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed eirmod</p>
                            <button class="btn btn-sm btn-primary">Reply</button>
                        </div>
                    </div>
                    <div class="d-flex mb-4">
                        <img src="img/user.jpg" class="img-fluid" style="width: 45px; height: 45px;">
                        <div class="ps-3">
                            <h6><a href="">John Doe</a> <small><i>01 Jan 2045</i></small></h6>
                            <p>Diam amet duo labore stet elitr invidunt ea clita ipsum voluptua, tempor labore
                                accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed eirmod</p>
                            <button class="btn btn-sm btn-primary">Reply</button>
                        </div>
                    </div>
                    <div class="d-flex ms-5 mb-4">
                        <img src="img/user.jpg" class="img-fluid" style="width: 45px; height: 45px;">
                        <div class="ps-3">
                            <h6><a href="">John Doe</a> <small><i>01 Jan 2045</i></small></h6>
                            <p>Diam amet duo labore stet elitr invidunt ea clita ipsum voluptua, tempor labore
                                accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed eirmod</p>
                            <button class="btn btn-sm btn-primary">Reply</button>
                        </div>
                    </div>
                </div>
                <!-- Comment List End -->

                <!-- Comment Form Start -->
                <div class="bg-primary p-5">
                    <h2 class="text-white mb-4">Add Blog</h2>
                    <form runat="server" method="post">
                        <div class="row g-3">
                            <div class="col-12 col-sm-6">
                                <%--<input type="text" class="form-control bg-white border-0" placeholder="Your Name" style="height: 55px;">--%>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control bg-white border-0" placeholder="Your Name" style="height: 55px;"></asp:TextBox>
                            </div>
                            <div class="col-12 col-sm-6">
                                <%--<input type="email" class="form-control bg-white border-0" placeholder="Your Email" style="height: 55px;">--%>
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control bg-white border-0" placeholder="Your Email" style="height: 55px;"></asp:TextBox>
                            </div>
                            <div class="col-12">
                                <%--<input type="text" class="form-control bg-white border-0" placeholder="Website" style="height: 55px;">--%>
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control bg-white border-0" placeholder="Subject" style="height: 55px;"></asp:TextBox>
                            </div>
                            <div class="col-12">
                                <%--<textarea class="form-control bg-white border-0" rows="5" placeholder="Comment"></textarea>--%>
                                <asp:TextBox ID="TextBox4" runat="server" class="form-control bg-white border-0" placeholder="Comment" style="height: 55px;"></asp:TextBox>
                            </div>
                            <div class="col-12">
                                <%--<button class="btn btn-secondary w-100 py-3" type="submit">Leave Your Comment</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-secondary w-100 py-3" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </form>
                </div>
                <!-- Comment Form End -->
            </div>

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
            </asp:Content>

