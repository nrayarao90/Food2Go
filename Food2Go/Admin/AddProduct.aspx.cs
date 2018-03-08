using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Food2Go.BAL;

namespace Food2Go.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            try
            {
                fupImage.SaveAs(Server.MapPath("~/product/") + fupImage.FileName);

                dal.ProductInfo_Insert(txtname.Text, txtdetail.Text, Convert.ToDouble(txtprice.Text), "~/product/" + fupImage.FileName.ToString(), drpcate.SelectedItem.Text, 0);
                lblmsg.Text = "Product Inserted";
                txtprice.Text = "";
                txtname.Text = "";
                txtdetail.Text = "";
                drpcate.SelectedIndex = 0;
            }
            catch (Exception ex)
            {

            }
        }
    }
}