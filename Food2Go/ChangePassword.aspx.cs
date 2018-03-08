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
    public partial class ChangePassword : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();
      

        protected void Page_Load(object sender, EventArgs e)
        {
            lbl.Text = " ";
        }

        protected void btnChangePwd_Click(object sender, EventArgs e)
        {
            dal.UserInfo_UpdatePassword(Convert.ToInt32(Session["uid"].ToString()), txtnewpass.Text);
            lbl.Text = "Password Changed";
        }
    }
}