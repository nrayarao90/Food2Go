using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Food2Go.BAL;

namespace Food2Go.Admin
{
    public partial class ActiveOrders : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = dal.OrderInfo_ActiveOrders(1);
                gvActiceOrders.DataSource = dt;
                gvActiceOrders.DataBind();
                lbll.Text = gvActiceOrders.Rows.Count.ToString();
            }
            catch(Exception ex)
            {

            }
        }

        protected void gvActiceOrders_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                string order = e.CommandArgument.ToString();
            }
            catch (Exception ex)
            {

            }
        }
    }
}