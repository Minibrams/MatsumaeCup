using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using  System.Data.SqlClient;
using System.Net.Mail;

namespace RegisterPortal
{
    public partial class Sigin : System.Web.UI.Page
    {
        private int _totalAmount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                
                DoNotTouch.Text = Session["Login"].ToString();
                Label3.Text = Session["User"].ToString();
                foreach (GridViewRow row in GridView1.Rows)
                {
                    for (int i = 7; i <= 7; i++)
                    {
                        _totalAmount += int.Parse(row.Cells[i].Text);
                    }
                }
                if (Session["Ok"] == null)
                {
                    Ok.Visible = false;
                    NotOk.Visible = false;
                }
                else if (Session["Ok"].ToString() == "Ok")
                {
                    Ok.Visible = true;
                    NotOk.Visible = false;
                }
                else if(Session["Ok"].ToString() == "NotOk")
                {
                    Ok.Visible = false;
                    NotOk.Visible = true;
                }
            }
            Label2.Text = _totalAmount.ToString();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            Session["Ok"] = null;
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            if (TextBox4.Text != "")
            {
                
                string club = GetClub();
                Connexion.Cn.Open();
                Connexion.cmd = Connexion.Cn.CreateCommand();
                Connexion.cmd.CommandType = CommandType.Text;
                Connexion.cmd.CommandText = ("insert into T values('" + TextBox4.Text + "','" + TextBox4.Text + "','" + DoNotTouch.Text + "','" + "U18 Men  -50 Kg" + "','" + "U18 Men  -50 Kg" + "','" +
                                             "Yes" + "','" + 100 + "','" + club + "')");
                Connexion.cmd.ExecuteNonQuery();
                Connexion.Cn.Close();
                TextBox4.Text = "";
                
                Response.Write(club);
                Session["Ok"] = "Ok";
                Ok.Visible = true;
                NotOk.Visible = false;
                Response.Redirect("CreateFighter.aspx");
            }
            else
            {
                Ok.Visible = false;
                NotOk.Visible = true;
                Session["Ok"] = "NotOk";
            }

        }

        private string GetClub()
        {
            Connexion.Cn.Open();
            Connexion.cmd = new SqlCommand("SELECT * FROM [User] Where UserName = '" + Session["Login"] +"'", Connexion.Cn);
            Connexion.dr = Connexion.cmd.ExecuteReader();

            Connexion.dr.Read();

            if (Connexion.dr.HasRows)
            {
               string club = Connexion.dr.GetValue(6).ToString();
                Connexion.dr.Close();
                Connexion.Cn.Close();
                return club;
            }
            else
            {
                Connexion.dr.Close();
                Connexion.Cn.Close();
                return "";
            }
        }


        protected void Button6_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Welcome.aspx");
        }

        private int getData(string textTjek, string Tabeltjek, string Tabel)
        {
            DataTable dt = new DataTable();
            Connexion.Cn.Open();
            Connexion.cmd = new SqlCommand("SELECT * FROM ["+Tabel+"] Where "+ Tabeltjek+" = '" + textTjek + "'", Connexion.Cn);
            SqlDataAdapter sqlDa = new SqlDataAdapter(Connexion.cmd);
            Connexion.cmd.Parameters.AddWithValue("@"+Tabeltjek, textTjek);
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Connexion.Cn.Close();               
               return int.Parse(dt.Rows[0]["Price"].ToString());
            }
            Connexion.Cn.Close();
            return 0;
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Id = (Label) GridView1.Rows[e.RowIndex].Cells[0].FindControl("Label1");
            DropDownList Category = (DropDownList) GridView1.Rows[e.RowIndex].FindControl("DropDownList1");
            DropDownList SecondCategory = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList2");
            DropDownList Camp = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList3");
            string category = Category.SelectedItem.ToString();
            string secondCategory = SecondCategory.SelectedItem.ToString();
            string camp = Camp.SelectedItem.ToString();
            int price = 0;
            price += getData(category, "Category", "Category");
            price += getData(secondCategory, "Category", "SecondCategory");
            price += getData(camp, "Choice", "Camp");
            InsertPrice(price, Id.Text);
        }
        private void InsertPrice(int price, string id)
        {
            Connexion.Cn.Open();
            Connexion.cmd = Connexion.Cn.CreateCommand();
            Connexion.cmd.CommandType = CommandType.Text;
            Connexion.cmd.CommandText = ("UPDATE [T] SET Price = '" + price + "' WHERE Id = "+id+" And UserName = '" + Session["Login"]+ "'");
            Connexion.cmd.ExecuteNonQuery();
            Connexion.Cn.Close();
        }

        private void SendEmail()
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("Afsender Mail");
            mail.To.Add("Modtager Mail");
            mail.Subject = "Test Mail - 1";
            mail.Body = "mail with attachment";
             //Hvis der skal sendes en fil med//
            //System.Net.Mail.Attachment attachment;
            //attachment = new System.Net.Mail.Attachment("c:/textfile.txt");
            //mail.Attachments.Add(attachment);

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("Afsender mail", "Skriv PassWord");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
        }
    }
}