<%@ Page Title="Trang chủ" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="ban_my_pham.TrangChu" %>

<asp:Content ID="Content2" ContentPlaceHolderID="css" runat="server">
    <link href="css/trang-chu.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="banner">
            <img src="images/banner.jpg" />
        </div>
        <div class="category-header">
            <span class="left-text">Sản phẩm mới</span>
            <div class="horizontal-line"></div>

        </div>
        <div class="products">
            <asp:ListView ID="lvSanPhamMoi" runat="server">
                <ItemTemplate>
                    <a href="ChiTietSanpham.aspx?id=<%# Eval("iSanphamid") %>" class="product">
                        <%# Convert.ToDouble(DataBinder.GetPropertyValue(Container.DataItem, "fPhantramgiamgia")) > 0?("<div class=\"discount-percentage\"><span>-" + DataBinder.GetPropertyValue(Container.DataItem, "fPhantramgiamgia") + "%</span></div>"):""%>
                        <img src="<%# ((DataBinder.GetPropertyValue(Container.DataItem, "sImageurl") != null && DataBinder.GetPropertyValue(Container.DataItem, "sImageurl").ToString().Trim().Length > 0)?DataBinder.GetPropertyValue(Container.DataItem, "sImageurl").ToString().Substring(1):"images/son.jpg") %>" class="product-image" />
                        <div class="product-details">
                            <h4 class="product-name"><%# Eval("sTensanpham") %></h4>
                            <span class="discounted-price"><%# String.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"), "{0:C0}", Convert.ToDouble(DataBinder.GetPropertyValue(Container.DataItem, "mGiaban"))*(1-Convert.ToDouble(DataBinder.GetPropertyValue(Container.DataItem, "fPhantramgiamgia"))/100)) %></span>
                            <%# Convert.ToDouble(DataBinder.GetPropertyValue(Container.DataItem, "fPhantramgiamgia")) > 0?"<del class=\"price\">" + String.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"), "{0:C0}", DataBinder.GetDataItem("mGiaban")) + "</del>":""%>
                        </div>
                    </a>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <div class="phantrang">
                <asp:DataPager ID="phantrang" QueryStringField="pagespm" PageSize="5" PagedControlID="lvSanPhamMoi" runat="server">
                    <Fields>
                        <asp:NumericPagerField ButtonType="Link" />
                        <asp:NextPreviousPagerField ButtonType="Link" RenderNonBreakingSpacesBetweenControls="true"
                            NextPageText="Tiếp"
                            ShowNextPageButton="true" PreviousPageText="Trước" ButtonCssClass="phantrang-button" />
                    </Fields>
                </asp:DataPager>
            </div>

        <div class="category-header">
            <span class="left-text">Đang khuyến mãi</span>
            <div class="horizontal-line"></div>

        </div>
        <div class="products">
            <asp:ListView ID="lvSanPhamKhuyenMai" runat="server">
                <ItemTemplate>
                    <a href="ChiTietSanpham.aspx?id=<%# Eval("iSanphamid") %>" class="product">
                        <%# Convert.ToDouble(DataBinder.GetPropertyValue(Container.DataItem, "fPhantramgiamgia")) > 0?("<div class=\"discount-percentage\"><span>-" + DataBinder.GetPropertyValue(Container.DataItem, "fPhantramgiamgia") + "%</span></div>"):""%>
                        <img src="<%# ((DataBinder.GetPropertyValue(Container.DataItem, "sImageurl") != null && DataBinder.GetPropertyValue(Container.DataItem, "sImageurl").ToString().Trim().Length > 0)?DataBinder.GetPropertyValue(Container.DataItem, "sImageurl").ToString().Substring(1):"images/son.jpg") %>" class="product-image" />
                        <div class="product-details">
                            <h4 class="product-name"><%# Eval("sTensanpham") %></h4>
                            <span class="discounted-price"><%# String.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"), "{0:C0}", Convert.ToDouble(DataBinder.GetPropertyValue(Container.DataItem, "mGiaban"))*(1-Convert.ToDouble(DataBinder.GetPropertyValue(Container.DataItem, "fPhantramgiamgia"))/100)) %></span>
                            <%# Convert.ToDouble(DataBinder.GetPropertyValue(Container.DataItem, "fPhantramgiamgia")) > 0?"<del class=\"price\">" + String.Format(System.Globalization.CultureInfo.GetCultureInfo("vi-VN"), "{0:C0}", DataBinder.GetDataItem("mGiaban")) + "</del>":""%>
                        </div>
                    </a>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <div class="phantrang">
                <asp:DataPager ID="DataPager1" QueryStringField="pagekm" PageSize="5" PagedControlID="lvSanPhamKhuyenMai" runat="server">
                    <Fields>
                        <asp:NumericPagerField ButtonType="Link" />
                        <asp:NextPreviousPagerField ButtonType="Link" RenderNonBreakingSpacesBetweenControls="true"
                            NextPageText="Tiếp"
                            ShowNextPageButton="true" PreviousPageText="Trước" ButtonCssClass="phantrang-button" />
                    </Fields>
                </asp:DataPager>
         </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="javascript" runat="server">
</asp:Content>
