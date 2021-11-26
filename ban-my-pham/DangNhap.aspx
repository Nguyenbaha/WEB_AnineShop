<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="ban_my_pham.DangNhap" %>

<asp:Content ID="Content2" ContentPlaceHolderID="css" runat="server">
    <link href="css/dang-nhap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 style="text-align: center">ĐĂNG NHẬP</h2>
        <br />
        <div class="noti">
            <label id="lblNotification" runat="server" style="color:red"></label>
        </div>
        <br />
        
        <div class="form-group">
            <label for="tenDangNhap" class="label">Tên đăng nhập</label>
            <input runat="server" class="form-control" type="text" id="tenDangNhap" placeholder="Nhập tên đăng nhập" />
            
        </div>
        <div class="form-group">
            <label for="matKhau" class="label">Mật khẩu</label>
            <input runat="server" class="form-control" type="password" id="matKhau" placeholder="Nhập mật khẩu" />
        </div>
        <div class="center-children">
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="Đăng nhập" />
        </div>
        
        <div class="form-group">
            <div class="label"></div>
            <span class="form-control">Bạn chưa có tài khoản? <a href="~/DangKy.aspx" runat="server">Đăng ký</a></span>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="javascript" runat="server">
</asp:Content>
