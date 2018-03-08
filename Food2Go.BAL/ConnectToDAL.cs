using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Food2Go.DAL;

namespace Food2Go.BAL
{
    public class ConnectToDAL
    {
        ConnectToDB db = new ConnectToDB();

        public void UserInfo_Insert(string fName, string lName, string mbl, string gender, string address, string city, string pin, string Email, string password)
        {
           db.UserInfo_Insert(fName, lName, mbl, gender, address, city, pin, Email, password);
        }

        public DataTable Login_UserInfo(string emailID, string pwd)
        {
          return db.Login_UserInfo(emailID, pwd);
        }

        public DataTable ForgotPwd_UserInfo(string emailID, string mbl)
        {
            return db.ForgotPwd_UserInfo(emailID, mbl);
        }

        public void ProductInfo_Insert(string pName, string detail, double price, string image, string cName, int status)
        {
            db.ProductInfo_Insert(pName, detail, price, image, cName, status);
        }

        public DataTable ProductInfo_Select()
        {
            return db.ProductInfo_Select();
        }

        public void ProductInfo_Delete(int ID)
        {
            db.ProductInfo_Delete(ID);
        }

        public DataTable Get_ProductInfo(string cName)
        {
            return db.Get_ProductInfo(cName);
        }

        public DataTable Get_ItemInfo(int pID)
        {
            return db.Get_ItemInfo(pID);
        }

        public void UpdateCart_User(int oRderID, int quantity, double price)
        {
            UpdateCart_User(oRderID, quantity, price);
        }

        public DataTable GetOrderByEmailandName(string emailID, string pName)
        {
            return db.GetOrderByEmailandName(emailID, pName);
        }

        public void Insert_ItemDetail(string email, string pName, double price, int quantity, double totalprice, string image, int status)
        {
            db.Insert_ItemDetail(email, pName, price, quantity, totalprice, image, status);
        }

        public DataTable GetOrderByEmailandStatus(string emailID, int status)
        {
            return db.GetOrderByEmailandStatus(emailID, status);
        }

        public void Delete_MyOrder(int ID)
        {
             db.Delete_MyOrder(ID);
        }

        public DataTable Get_OrderAmount(string email)
        {
            return db.Get_OrderAmount(email);
        }

        public void PaymentInfo_Insert(string email, string type, string bName, string card, int ccv, double amt)
        {
            db.PaymentInfo_Insert(email, type, bName, card, ccv, amt);
        }

        public DataTable Get_MyOrder(string email)
        {
            return db.Get_MyOrder(email);
        }

        public void UserInfo_UpdatePassword(int ID, string pwd)
        {
            db.UserInfo_UpdatePassword(ID, pwd);
        }

        public DataTable OrderInfo_ActiveOrders(int status)
        {
            return db.OrderInfo_ActiveOrders(status);
        }
    }
}
