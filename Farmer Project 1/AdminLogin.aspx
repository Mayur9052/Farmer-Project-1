<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Farmer_Project_1.AdminLogin" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <body>
        <div style="background-image: url('./img/h1.jpg'); background-size: cover; background-position: bottom; width: 100%; height: 100%; position: absolute; top: 0; left: 0;">
            <div class="row g-0" style="position: relative; top: 20%; margin-left: 100px;">
                <div class="col-lg-7">
                    <div class="bg-secondary h-100 p-5 w-50">
                        <h1 class="m-4 mt-0 mx-5 text-white">Admin Here</h1>
                        <form runat="server" method="post">
                            <div class="row g-3">
                                <div class="col-12">
                                    <%--<input type="email" class="form-control bg-light border-0 px-4" placeholder="Your Email" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control border-0 px-4" placeholder="Your Email" Style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Subject" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Password" Style="height: 55px;" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<button class="btn btn-secondary w-100 py-3" type="submit">Send Message</button>--%>
                                    <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-success w-100 py-3" OnClick="Button1_Click1" />
                                </div>
                                <p class="text-white m-4">Create a New Account?<a class="text-success fw-bold" href="AdminSignup.aspx"> SignUp</a></p>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</asp:Content>

