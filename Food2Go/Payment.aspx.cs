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
    public partial class Payment : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            dt = dal.Get_OrderAmount(Session["email"].ToString());
            lblamt.Text = dt.Rows[0]["tprice"].ToString();
        }

        protected void rdoonine_CheckedChanged(object sender, EventArgs e)
        {
            mvPayment.ActiveViewIndex = 0;
        }

        protected void rdooffline_CheckedChanged(object sender, EventArgs e)
        {
            dt = dal.Get_OrderAmount(Session["email"].ToString());
            lblamtt.Text = dt.Rows[0]["tprice"].ToString();
            mvPayment.ActiveViewIndex = 1;
        }

        protected void btnpayonline_Click(object sender, EventArgs e)
        {
            dal.PaymentInfo_Insert(Session["email"].ToString(), "Online", drpbankname.SelectedItem.Text, txtcard.Text, Convert.ToInt32(txtcvv.Text), Convert.ToDouble(lblamt.Text));
            dal.GetOrderByEmailandStatus(Session["email"].ToString(), 1);

            Response.Redirect("Thanks.aspx");
        }
        protected void btnpayoffline_Click(object sender, EventArgs e)
        {
            dal.PaymentInfo_Insert(Session["email"].ToString(), "Offline", "-", "-", 0, Convert.ToDouble(lblamt.Text));
            dal.GetOrderByEmailandStatus(Session["email"].ToString(), 1);
            Response.Redirect("Thanks.aspx");
        }
    }
}