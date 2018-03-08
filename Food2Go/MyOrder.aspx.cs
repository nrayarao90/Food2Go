using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Food2Go.BAL;

namespace Food2Go
{
    public partial class MyOrder : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            dt = dal.Get_MyOrder(Session["email"].ToString());
            gvMyOrders.DataSource = dt;
            gvMyOrders.DataBind();
            lbl.Text = gvMyOrders.Rows.Count.ToString();
        }
    }
}