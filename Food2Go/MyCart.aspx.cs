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
    public partial class MyCart : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = dal.GetOrderByEmailandStatus(Session["email"].ToString(), 0);
                gvMyCart.DataSource = dt;
                gvMyCart.DataBind();
                lbl.Text = gvMyCart.Rows.Count.ToString();

                if (gvMyCart.Rows.Count == 0)
                {

                    btnchckout.Visible = false;
                    btnContinueShopping.Visible = false;
                }
                else
                {
                    btnchckout.Visible = true;
                    btnContinueShopping.Visible = true;
                }
            }
        }

        protected void gvMyCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int oid = Convert.ToInt32(gvMyCart.DataKeys[e.RowIndex].Value);

            dal.Delete_MyOrder(oid);
            dt = dal.GetOrderByEmailandStatus(Session["email"].ToString(), 0);
            gvMyCart.DataSource = dt;
            gvMyCart.DataBind();
            lbl.Text = gvMyCart.Rows.Count.ToString();

        }
        protected void gvMyCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int oidd = Convert.ToInt32(gvMyCart.DataKeys[e.RowIndex].Value);
            TextBox txtqq = gvMyCart.Rows[e.RowIndex].Cells[3].FindControl("txtq") as TextBox;

            string pricee = gvMyCart.Rows[e.RowIndex].Cells[2].Text;
            double tpricee = Convert.ToInt32(pricee) * Convert.ToInt32(txtqq.Text);

            dal.UpdateCart_User(oidd, Convert.ToInt32(txtqq.Text), tpricee);
            dt = dal.GetOrderByEmailandStatus(Session["email"].ToString(), 0);
            gvMyCart.DataSource = dt;
            gvMyCart.DataBind();
        }

        protected void btnchckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}