<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Product_content.aspx.cs" Inherits="Farmer_Project_1.Product_content" %>

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
                            <a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-twitter"></i></a><a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-facebook-f"></i></a><a class="btn btn-primary btn-square rounded-circle me-2" href="#"><i class="fab fa-linkedin-in"></i></a><a class="btn btn-primary btn-square rounded-circle" href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Topbar End -->


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
                        <a href="index.html" class="nav-item nav-link active">Home</a> <a href="about.html" class="nav-item nav-link">About</a> <a href="service.html" class="nav-item nav-link">Service</a> <a href="product.html" class="nav-item nav-link">Product</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu m-0">
                                <a href="blog.html" class="dropdown-item">Blog Grid</a> <a href="detail.html" class="dropdown-item">Blog Detail</a> <a href="feature.html" class="dropdown-item">Features</a> <a href="team.html" class="dropdown-item">The Team</a> <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">Contact</a>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->

            <div class="m-5 p-2 bg-secondary pt-5">



                <!-- Open Content -->
                <div class="container pb-5">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <div class="row bg-success" style="padding:20px 300px; padding-left:100px;">


                                <div class="col-lg-5 mt-5">
                                    <div class="card mb-3">
                                        <%--<img class="card-img img-fluid" src="assets/img/product_single_10.jpg" alt="Card image cap" id="product-detail">--%>
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="500" Height="480" />
                                    </div>
                                </div>
                                <!-- col end -->
                                <div class="col-lg-7 mt-5 text-white" style="position:relative;left:200px;">
                                    <div class="card p-5 px-1 bg-success text-white" style="padding:100px;">
                                        <div class="card-body">
                                            <h1 class="h2 text-white">
                                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></h1>
                                            <p class="h3 py-2 text-white">$<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></p>
                                            <p class="py-2 text-white">
                                                <i class="fa fa-star text-warning"></i>
                                                <i class="fa fa-star text-warning"></i>
                                                <i class="fa fa-star text-warning"></i>
                                                <i class="fa fa-star text-warning"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <span class="list-inline-item text-white">Rating 4.8 | 36 Comments</span>
                                            </p>
                                            <ul class="list-inline">
                                                <li class="list-inline-item">
                                                    <h5 class="text-white">Brand:</h5>
                                                </li>
                                                <li class="list-inline-item text-white">
                                                    <p class="text-muted "><strong>
                                                        <asp:Label ID="brandLabel" class="text-white" runat="server" Text='<%# Eval("brand") %>' /></strong></p>
                                                </li>
                                            </ul>

                                            <h6 class="text-white">Description:</h6>
                                            <p>
                                                <asp:Label ID="descriptionLabel" class="text-white" runat="server" Text='<%# Eval("description") %>' /></p>

                                            <div class="row pb-3">
                                                <div class="col d-grid">
                                                    <%--<button type="submit" class="btn btn-success btn-lg" name="submit" value="buy">Buy</button>--%>
                                                    <a href="BuyProduct.aspx" class="btn btn-secondary btn-lg">Buy</a>
                                                </div>
                                                <div class="col d-grid">
                                                    <button type="submit" class="btn btn-secondary btn-lg" name="submit" value="addtocard">Add To Cart</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Add_product] WHERE ([name] = @name)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="name" QueryStringField="name" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                </div>
        <!-- Close Content -->



            <%--        <br />
        <br />
        
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                brand:
                <asp:Label ID="brandLabel" runat="server" Text='<%# Eval("brand") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                image:
                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                <br />--%>
            <br />

            <br />
            <br />
    </form>

</asp:Content>

