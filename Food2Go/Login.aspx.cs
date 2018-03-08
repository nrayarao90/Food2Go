using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Food2Go.BAL;

namespace Food2Go
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            DataTable dt = dal.Login_UserInfo(txtusername.Text, txtpassword.Text);
            if (dt.Rows.Count > 0)
            {
                Session["email"] = dt.Rows[0]["email"].ToString();
                Session["name"] = dt.Rows[0]["fname"].ToString() + " " + dt.Rows[0]["lname"].ToString();
                Session["uid"] = dt.Rows[0]["uid"].ToString();
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid username or password";

            }
        }
    }
}