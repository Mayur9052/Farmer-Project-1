<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Product_update.aspx.cs" Inherits="Farmer_Project_1.Product_update" %>
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


    <!-- Carousel Start -->
        <div class="container-fluid p-0">
            <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100 h-50" src="img/carousel-1.jpg" alt="Image">
                        <div class="carousel-caption top-0 bottom-0 start-0 end-0 d-flex flex-column align-items-center justify-content-center">
                            <div class="text-start p-5" style="max-width: 900px;">
                                <h3 class="text-white">Organic Vegetables</h3>
                                <h1 class="display-1 text-white mb-md-4">Organic Vegetables For Healthy Life</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Explore</a> <a href="" class="btn btn-secondary py-md-3 px-md-5">Contact</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100 h-50" src="img/carousel-2.jpg" alt="Image">
                        <div class="carousel-caption top-0 bottom-0 start-0 end-0 d-flex flex-column align-items-center justify-content-center">
                            <div class="text-start p-5" style="max-width: 900px;">
                                <h3 class="text-white">Organic Fruits</h3>
                                <h1 class="display-1 text-white mb-md-4">Organic Fruits For Better Health</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Explore</a> <a href="" class="btn btn-secondary py-md-3 px-md-5">Contact</a>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    <!-- Carousel End -->



    
    <div class="col-lg-7">
        <div class="bg-primary h-100 p-5 m-5" style="position:relative;left:200px;">
            <form id="form1" runat="server">
                <div class="row g-3">
                    <div class="col-6">
                        <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Your Name" style="height: 55px;">--%>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter Product Name" style="height: 55px;"></asp:TextBox>
                    </div>
                    <div class="col-6">
                        <%--<input type="email" class="form-control bg-light border-0 px-4" placeholder="Your Email" style="height: 55px;">--%>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter Brand" style="height: 55px;"></asp:TextBox>
                    </div>
                    <div class="col-12">
                        <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Subject" style="height: 55px;">--%>
                        <asp:TextBox ID="TextBox3" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter Price" style="height: 55px;"></asp:TextBox>
                    </div>
                    <div class="col-12">
                        <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Subject" style="height: 55px;">--%>
                        <%--<asp:TextBox ID="TextBox4" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter Product Type" style="height: 55px;"></asp:TextBox>--%>
                   
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control p-3">
                            <asp:ListItem>Seeds</asp:ListItem>
                            <asp:ListItem>Machinery</asp:ListItem>
                            <asp:ListItem>Pesticides</asp:ListItem>
                            <asp:ListItem>Grains</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-12">
                        <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Subject" style="height: 55px;">--%>
                        <asp:TextBox ID="TextBox5" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter Description" style="height: 55px;"></asp:TextBox>
                    </div>
                    <div class="col-4">
                        <asp:FileUpload ID="FileUpload1" runat="server" class="text-white form-control p-3" />
                    </div>
                    <div class="col-12">
                        <%--<button class="btn btn-secondary w-100 py-3" type="submit">Send Message</button>--%>
                        <asp:Button ID="Button1" runat="server" Text="Update" class="btn btn-secondary w-100 py-3" OnClick="Button1_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>
    
    
</asp:Content>

