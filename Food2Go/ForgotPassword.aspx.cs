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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
           DataTable dt= dal.ForgotPwd_UserInfo(txtusername.Text, txtmobile.Text);

            if (dt.Rows.Count > 0)
            {

                lblmsg.Text = "Password =" + dt.Rows[0]["password"].ToString();
            }
            else
            {
                lblmsg.Text = "Invalid name or mobile";
            }
        }
    }
}