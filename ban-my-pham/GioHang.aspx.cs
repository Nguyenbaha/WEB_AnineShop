using ban_my_pham.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ban_my_pham
{
    public partial class GioHang : System.Web.UI.Page
    {
        public List<SanPhamGioHang> sanPhamTrongGioHang;
        public float tongTien = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.GetPostBackEventReference(this, string.Empty);
            string action = Request.Form["__EVENTTARGET"];
            string value = Request.Form["__EVENTARGUMENT"];
            if (action != null)
            {
                if (action == "botSanPham")
                {
                    botSanPham(Convert.ToInt32(value));
                }
                if (action == "themSanPham")
                {
                    themSanPham(Convert.ToInt32(value));
                }
                if (action == "xoaSanPham")
                {
                    xoaSanPham(Convert.ToInt32(value));
                }
            }
            if (Page.IsPostBack)
            {
                var k = Request.Form;
                var p = "";
            }
            if (Session["GioHang"] == null)
            {
                Session["GioHang"] = new List<SanPhamGioHang>();
            }
            sanPhamTrongGioHang = (List<SanPhamGioHang>)Session["GioHang"];
            foreach (SanPhamGioHang product in sanPhamTrongGioHang)
            {
                tongTien += product.soLuong * product.sanPham.giaBan * (1 - product.sanPham.phanTramGiamGia / 100);
                Session["TongTien"] = tongTien;
            }
        }

        private void themSanPham(int sanPhamId)
        {
            sanPhamTrongGioHang = (List<SanPhamGioHang>)Session["GioHang"];
            int soLuongSanPhamTrongGio = Convert.ToInt32(Session["SoLuongSanPhamTrongGio"]);
            if (sanPhamTrongGioHang == null)
            {
                Session["GioHang"] = new List<SanPhamGioHang>();
                return;
            }
            foreach (SanPhamGioHang sp in sanPhamTrongGioHang)
            {
                if (sp.sanPham.maSanPham == sanPhamId)
                {
                    sp.soLuong++;
                    soLuongSanPhamTrongGio++;
                    break;
                }
            }
            Session["GioHang"] = sanPhamTrongGioHang;
            Session["SoLuongSanPhamTrongGio"] = soLuongSanPhamTrongGio;
        }

        private void botSanPham(int sanPhamId)
        {
            sanPhamTrongGioHang = (List<SanPhamGioHang>)Session["GioHang"];
            int soLuongSanPhamTrongGio = Convert.ToInt32(Session["SoLuongSanPhamTrongGio"]);
            if (sanPhamTrongGioHang == null)
            {
                Session["GioHang"] = new List<SanPhamGioHang>();
                return;
            }
            foreach (SanPhamGioHang sp in sanPhamTrongGioHang)
            {
                if (sp.sanPham.maSanPham == sanPhamId)
                {
                    soLuongSanPhamTrongGio--;
                    if (sp.soLuong > 1)
                    {
                        sp.soLuong--;
                        break;
                    }
                    else
                    {
                        sanPhamTrongGioHang.Remove(sp);
                        break;
                    }
                }
            }
            Session["GioHang"] = sanPhamTrongGioHang;
            Session["SoLuongSanPhamTrongGio"] = soLuongSanPhamTrongGio;
        }

        private void xoaSanPham(int sanPhamId)
        {
            sanPhamTrongGioHang = (List<SanPhamGioHang>)Session["GioHang"];
            int soLuongSanPhamTrongGio = Convert.ToInt32(Session["SoLuongSanPhamTrongGio"]);
            if (sanPhamTrongGioHang == null)
            {
                Session["GioHang"] = new List<SanPhamGioHang>();
                return;
            }
            foreach (SanPhamGioHang sp in sanPhamTrongGioHang)
            {
                if (sp.sanPham.maSanPham == sanPhamId)
                {
                    soLuongSanPhamTrongGio -= sp.soLuong;
                    sanPhamTrongGioHang.Remove(sp);
                    break;
                }
            }
            Session["GioHang"] = sanPhamTrongGioHang;
            Session["SoLuongSanPhamTrongGio"] = soLuongSanPhamTrongGio;
        }
    }
}