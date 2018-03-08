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
    public partial class Products : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (!IsPostBack)
            {
                string id= Request.QueryString["id"].ToString();
                if (id == "1")
                {
                    dt = dal.Get_ProductInfo("Chinese");
                    dlFood.DataSource = dt;
                    dlFood.DataBind();
                }
                else if (id == "2")
                {
                    dt = dal.Get_ProductInfo("Mexican");
                    dlFood.DataSource = dt;
                    dlFood.DataBind();

                }
                else if (id == "3")
                {
                    dt = dal.Get_ProductInfo("Italian");
                    dlFood.DataSource = dt;
                    dlFood.DataBind();
                }
                else if (id == "4")
                {
                    dt = dal.Get_ProductInfo("Indian");
                    dlFood.DataSource = dt;
                    dlFood.DataBind();
                }
            }
        }

        protected void dlFood_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["vid"] = e.CommandArgument.ToString();
            Response.Redirect("ViewItem.aspx");
        }
    }
}