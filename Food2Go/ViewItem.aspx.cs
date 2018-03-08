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
    public partial class ViewItem : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                dt = dal.Get_ItemInfo(Convert.ToInt32(Session["vid"].ToString()));
                lblname.Text = dt.Rows[0]["pname"].ToString();
                lblprice.Text = dt.Rows[0]["price"].ToString();
                lbldetail.Text = dt.Rows[0]["detail"].ToString();
                lblcate.Text = dt.Rows[0]["cname"].ToString();
                Image1.ImageUrl = dt.Rows[0]["image"].ToString();
            }
            catch (Exception ex)
            {

            }

        }

        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            try
            {
                dt = dal.GetOrderByEmailandName(Session["email"].ToString(), lblname.Text);
                if (dt.Rows.Count == 1)
                {
                    dal.UpdateCart_User(Convert.ToInt32(dt.Rows[0]["oid"].ToString()), 1, Convert.ToDouble(lblprice.Text));
                }
                else
                {
                    dal.Insert_ItemDetail(Session["email"].ToString(), lblname.Text, Convert.ToDouble(lblprice.Text), 1, Convert.ToDouble(lblprice.Text), Image1.ImageUrl.ToString(), 0);
                }
                Response.Redirect("MyCart.aspx");
            }
            catch (Exception ex)
            {

            }
        }
    }
}