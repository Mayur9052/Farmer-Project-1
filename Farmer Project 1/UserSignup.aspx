<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UserSignup.aspx.cs" Inherits="Farmer_Project_1.UserSignup" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <body>
        <div style="background-image: url('./img/g5.jpg'); background-size: cover; background-position: bottom; width: 100%; height: 100%; position: absolute; top: 0; left: 0;">
            <div class="row g-0" style="position: relative; top: 10%; margin-left: 100px;">
                <div class="col-lg-7">
                    <div class="bg-secondary h-100 p-5 w-50">
                        <h1 class="m-4 mt-0 mx-5 text-white">SignUp Here</h1>
                        <form runat="server" method="post">
                            <div class="row g-3">
                                <div class="col-12">
                                    <%--<input type="email" class="form-control bg-light border-0 px-4" placeholder="Your Email" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Name" Style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Subject" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Mobile No" Style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<input type="email" class="form-control bg-light border-0 px-4" placeholder="Your Email" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Email" Style="height: 55px;"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<input type="text" class="form-control bg-light border-0 px-4" placeholder="Subject" style="height: 55px;">--%>
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control bg-light border-0 px-4" placeholder="Your Password" Style="height: 55px;" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<button class="btn btn-secondary w-100 py-3" type="submit">Send Message</button>--%>
                                    <asp:Button ID="Button1" runat="server" Text="SignUp" class="btn btn-success w-100 py-3" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </asp:Content>

