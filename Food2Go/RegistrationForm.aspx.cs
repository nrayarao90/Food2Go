using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Food2Go.BAL;

namespace Food2Go
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        ConnectToDAL dal = new ConnectToDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtpass.Text == txtconfirmpass.Text)
            {
                string gnd = "";
                if (rdofemale.Checked == true)
                {
                    gnd = "Male";
                }
                else
                {
                    gnd = "Female";
                }
                dal.UserInfo_Insert(txtfname.Text, txtlname.Text, txtmobile.Text, gnd, txtadd.Text, txtcity.Text, txtpincode.Text, txtemail.Text, txtpass.Text);
                lblmsg.Text = "Registration Successfully";
                if(lblmsg.Text == "Registration Successfully")
                {
                    txtfname.Text = "";
                    txtlname.Text = "";
                    txtmobile.Text = "";
                    txtadd.Text = "";
                    txtcity.Text = "";
                    txtpincode.Text = "";
                    txtemail.Text = "";
                    txtpass.Text = "";
                    txtconfirmpass.Text = "";
                }
            }
            else
            {

            }
        }
    }
}