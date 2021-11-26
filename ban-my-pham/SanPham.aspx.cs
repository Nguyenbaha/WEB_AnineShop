using ban_my_pham.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ban_my_pham
{
    public partial class SanPham : System.Web.UI.Page
    {
        public List<Product> products;
        public ProductType productType;
        protected void Page_Load(object sender, EventArgs e)
        {
            int type = Convert.ToInt32(Request.QueryString["type"]);
            products = SanPhamDB.GetSanPhamByLoai(type);
            productType = SanPhamDB.getLoaiSanPham(type);
        }
    }
}