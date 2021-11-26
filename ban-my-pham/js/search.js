function searchSanPham() {
    var value = document.getElementById("txtSearch").value;
    if (value != null && value.trim().length > 0) {
        location.href = '/TimKiem.aspx?q=' + value.trim();
    }
}

































// tìm xem sản phẩm đã có trong giỏ chưa, nếu đã có thì thêm số lượng
/*int idx = -1;
for (int i = 0; i < sanPhamTrongGio.Count; ++i)
{
    if (sanPhamTrongGio[i].sanPham.maSanPham == idSanPham) {
        idx = i;
        break;
    }
}
if (idx != -1) {
    sanPhamTrongGio[idx].soLuong++;
} else {
    sanPhamTrongGio.Add(new SanPhamGioHang(1, sp));
}*/



// sản phẩm cùng loại
/*<div class="category-header">
            <span class="left-text">Sản phẩm cùng loại</span>
            <div class="horizontal-line"></div>
        </div>
        <div class="products">
            <% foreach (ban_my_pham.Product sp in sanPhamCungLoai)
               { %>
            <a href="ChiTietSanPham.aspx?id=<%=sp.maSanPham %>" class="product-small">
                <img src="<%=((sp.duongDanAnh != null && sp.duongDanAnh.Trim().Length > 0)?sp.duongDanAnh.Substring(1):"images/son.jpg") %>" class="product-small-image" />
                <div class="product-small-details">
                    <h4 class="product-small-name"><%=sp.tenSanPham %></h4>
                    <span class="product-small-sdiscounted-price"><%= String.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"), "{0:C0}", sp.giaBan*(1-sp.phanTramGiamGia/100)) %></span>
                    <% if (sp.phanTramGiamGia > 0)
                       { %>
                    <del class="product-small-sprice"><%= String.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"), "{0:C0}", sp.giaBan) %></del>
                    <% } %>
                </div>
            </a>
            <% } %>
        </div>*/  



/*

<%@Page Title = "Đăng nhập" Language = "C#" MasterPageFile = "~/Web.Master" AutoEventWireup = "true" CodeBehind = "DangNhap.aspx.cs" Inherits = "ban_my_pham.DangNhap" %>

    <asp: Content ID="Content2" ContentPlaceHolderID="css" runat="server">
        <link href="css/dang-nhap.css" rel="stylesheet" />
    </asp: Content >
        <asp: Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="container">
                <h2 style="text-align: center">ĐĂNG NHẬP</h2>
                <div class="form-group" >
                    <label class="label"></label>
                    <div class="form-control">
                        <asp:ValidationSummary ValidationGroup="ServerError" HeaderText="Có lỗi xảy ra:" CssClass="error-msg" ID="ValidationSummary2" runat="server" />
                <asp:CustomValidator ValidationGroup="ServerError" id="CustomValidator1" runat="server" Display="None" ValidateEmptyText="true"></asp:CustomValidator>

                <asp:ValidationSummary HeaderText="Có lỗi xảy ra:" CssClass="error-msg" ID="ValidationSummary1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" ControlToValidate="tenDangNhap" ErrorMessage="Tên đăng nhập không được bỏ trống."></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="None" ControlToValidate="matKhau" ErrorMessage="Mật khẩu không được bỏ trống."></asp:RequiredFieldValidator>
            </div>
        </div >
        
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
    </div >

</asp: Content >
    <asp: Content ID="Content4" ContentPlaceHolderID="javascript" runat="server">
    </asp: Content > */












 // CustomValidator1.IsValid = false;
                    //  CustomValidator1.ErrorMessage = "Tên đăng nhập hoặc mật khẩu không chính xác.";






