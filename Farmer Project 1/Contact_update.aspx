﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact_update.aspx.cs" Inherits="Farmer_Project_1.Contact_update" %>
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
                        <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-twitter"></i></a><a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-facebook-f"></i></a><a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-linkedin-in"></i></a><a class="btn btn-primary btn-square rounded-circle" href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    <!-- Topbar End -->


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
                <a href="Index.aspx" class="nav-item nav-link active">Home</a>
                <a href="About.aspx" class="nav-item nav-link">About</a>
                <a href="Service.aspx" class="nav-item nav-link">Service</a>
                <a href="Product.aspx" class="nav-item nav-link">Product</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
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
    <!-- Navbar End -->

        
    <!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                <h6 class="text-primary text-uppercase">Contact Us</h6>
                <h1 class="display-5">Please Feel Free To Contact Us</h1>
            </div>
            <div class="row g-0">
                <div class="col-lg-7">
                    <div class="bg-primary h-100 p-5">
                        <form runat="server" method="post"> 
                            <div class="row g-3">
                                <div class="col-6">
                                    <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Your Name" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Name" style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-6">
                                    <%--<input type="email" class="form-control bg-light border-0 px-4" placeholder="Your Email" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Email" style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Subject" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Subject" style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<textarea class="form-control bg-light border-0 px-4 py-3" rows="2" placeholder="Message"></textarea>--%>
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control bg-light border-0 px-4 py-3" rows="2" placeholder="Message"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<button class="btn btn-secondary w-100 py-3" type="submit">Send Message</button>--%>
                                    <asp:Button ID="Button1" runat="server" Text="Update" class="btn btn-secondary w-100 py-3" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

            </asp:Content>

