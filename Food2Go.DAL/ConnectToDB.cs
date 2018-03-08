using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Food2Go.DAL
{
    public class ConnectToDB
    {
        public void UserInfo_Insert(string fName,string lName,string mbl,string gender,string address,string city,string pin,string Email,string password)
        {
            try
            {
                string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("CreateUserInfo", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@FNAME", fName);
                cmd.Parameters.AddWithValue("@LNAME", lName);
                cmd.Parameters.AddWithValue("@MOBILE", mbl);
                cmd.Parameters.AddWithValue("@GENDER", gender);
                cmd.Parameters.AddWithValue("@ADD", address);
                cmd.Parameters.AddWithValue("@CITY", city);
                cmd.Parameters.AddWithValue("@PIN", pin);
                cmd.Parameters.AddWithValue("@EMAIL", Email);
                cmd.Parameters.AddWithValue("@PASS", password);

                cmd.ExecuteNonQuery();

                conn.Close();
            }
            catch(Exception ex)
            {

            }
        }

        public DataTable Login_UserInfo(string emailID, string pwd)
        {
            string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("UserInfo_Login", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@email", emailID);
            cmd.Parameters.AddWithValue("@pass", pwd);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
            return dt;
        }

        public DataTable ForgotPwd_UserInfo(string emailID, string mbl)
        {
            string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("UserInfo_ForgotPwd", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@email", emailID);
            cmd.Parameters.AddWithValue("@mobile", mbl);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
            return dt;
        }

        public void ProductInfo_Insert(string pName, string detail, double price, string image, string cName, int status)
        {
            try
            {
                string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("ProductInfo_Insert", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@PNAME", pName);
                cmd.Parameters.AddWithValue("@DETAIL", detail);
                cmd.Parameters.AddWithValue("@PRIcE", price);
                cmd.Parameters.AddWithValue("@IMAGE", image);
                cmd.Parameters.AddWithValue("@CNAME", cName);
                cmd.Parameters.AddWithValue("@STATUS", status);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {

            }
        }

        public DataTable ProductInfo_Select()
        {
            string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("ProductInfo_Select", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
            return dt;
        }

        public void ProductInfo_Delete(int ID)
        {
            try
            {
                string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("ProductInfo_Delete", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@PID", ID);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {

            }
        }

        public DataTable Get_ProductInfo(string cName)
        {
            string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("GetProductsByCategory", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CNAME", cName);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }

        public DataTable Get_ItemInfo(int pID)
        {
            string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Get_ProductInfo_Id", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PID", pID);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }

        public void UpdateCart_User(int oRderID,int quantity,double price)
        {
            try
            {
                string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("UpdateCart", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@OID", oRderID);
                cmd.Parameters.AddWithValue("@QNT", quantity);
                cmd.Parameters.AddWithValue("@TPRICE", price);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {

            }
        }

        public DataTable GetOrderByEmailandName(string emailID, string pName)
        {
            string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("GetOrderByEmailandName", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@email", emailID);
            cmd.Parameters.AddWithValue("@pname", pName);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
            return dt;
        }

        public void Insert_ItemDetail(string email,string pName,double price,int quantity,double totalprice, string image, int status)
        {
            try
            {
                string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("Insert_ItemDetail", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@EMAIL", email);
                cmd.Parameters.AddWithValue("@PNAME", pName);
                cmd.Parameters.AddWithValue("@PRICE", price);
                cmd.Parameters.AddWithValue("@QNT", quantity);
                cmd.Parameters.AddWithValue("@TPRICE", totalprice);
                cmd.Parameters.AddWithValue("@IMAGE", image);
                cmd.Parameters.AddWithValue("@STATUS", status);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {

            }
        }

        public DataTable GetOrderByEmailandStatus(string emailID, int status)
        {
            string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("GetOrderDetailsbyEmailandStatus", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@email", emailID);
            cmd.Parameters.AddWithValue("@status",status);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
            return dt;
        }

        public void Delete_MyOrder(int ID)
        {
            try
            {
                string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("DeleteUserOrder", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@OID", ID);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {

            }
        }

        public DataTable Get_OrderAmount(string email)
        {
            string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("TotalAmountPerOrder", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", email);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }

        public void PaymentInfo_Insert(string email, string type, string bName, string card, int ccv, double amt)
        {
            try
            {
                string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("AddPayment", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@EMAIL", email);
                cmd.Parameters.AddWithValue("@TYPE", type);
                cmd.Parameters.AddWithValue("@BNAME", bName);
                cmd.Parameters.AddWithValue("@CARD", card);
                cmd.Parameters.AddWithValue("@CCV", ccv);
                cmd.Parameters.AddWithValue("@AMT", amt);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {

            }
        }

        public DataTable Get_MyOrder(string email)
        {
            string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("GetOrderByEmail", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", email);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }

        public void UserInfo_UpdatePassword(int ID,string pwd)
        {
            try
            {
                string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("UserInfo_UpdatePassword", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UID", ID);
                cmd.Parameters.AddWithValue("@PASS", pwd);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {

            }
        }

        public DataTable OrderInfo_ActiveOrders(int status)
        {
            string strcon = "Persist Security Info=False;Integrated Security=true;Initial Catalog=Food2Go;server=LAPTOP-F0KD5UCU\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("SelectOrderByStatus", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@status", status);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }


    }

}
