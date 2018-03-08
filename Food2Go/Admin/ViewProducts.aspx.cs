using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Food2Go.BAL;
using System.Data;

namespace Food2Go.Admin
{
    public partial class ViewProducts : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = dal.ProductInfo_Select();
                gvFoodInfo.DataSource = dt;
                gvFoodInfo.DataBind();
            }
            catch (Exception ex)
            {

            }

        }

        protected void gvFoodInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int index = Convert.ToInt32(gvFoodInfo.DataKeys[e.RowIndex].Values[0]);
                dal.ProductInfo_Delete(index);
                DataTable dt = dal.ProductInfo_Select();
                gvFoodInfo.DataSource = dt;
                gvFoodInfo.DataBind();
            }
            catch (Exception ex)
            {

            }
        }

        protected void gvFoodInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                gvFoodInfo.PageIndex = e.NewPageIndex;
                DataTable dt = dal.ProductInfo_Select();
                gvFoodInfo.DataSource = dt;
                gvFoodInfo.DataBind();
            }
            catch (Exception ex)
            {

            }
        }
    }
}