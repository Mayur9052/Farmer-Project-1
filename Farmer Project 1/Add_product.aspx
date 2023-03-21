<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Add_product.aspx.cs" Inherits="Farmer_Project_1.Add_product" %>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
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
                        <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-secondary w-100 py-3" OnClick="Button1_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>
    

            </asp:Content>

