using ban_my_pham.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ban_my_pham
{
    public partial class TrangChu : System.Web.UI.Page
    {
        public List<Product> sanPhamMoi;
        public List<Product> sanPhamKhuyenMai;
        protected void Page_Load(object sender, EventArgs e)
        {
            lvSanPhamMoi.DataSource = SanPhamDB.GetAllSanPhamMoi();
            lvSanPhamMoi.DataBind();
            lvSanPhamKhuyenMai.DataSource = SanPhamDB.GetAllSanPhamKhuyenMai();
            lvSanPhamKhuyenMai.DataBind();
        }
    }
}