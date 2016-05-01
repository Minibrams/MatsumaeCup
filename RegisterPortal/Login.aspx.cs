using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Data;

namespace RegisterPortal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] != null)
            {
                Response.Redirect("CreateFighter.aspx");
            }
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                Connexion.Cn.Open();
                Connexion.cmd = new SqlCommand("SELECT * FROM [User] Where UserName = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'", Connexion.Cn);
                Connexion.dr = Connexion.cmd.ExecuteReader();
               
                Connexion.dr.Read();

                if (Connexion.dr.HasRows)
                {
                    Session["User"] = Connexion.dr.GetValue(2).ToString();
                    Connexion.dr.Close();
                    Connexion.Cn.Close();
                    Session["login"] = TextBox1.Text;
                    
                    Response.Redirect("CreateFighter.aspx");
                }
                else
                {
                    Connexion.dr.Close();
                    Connexion.Cn.Close();
                    Response.Write("Nope!");
                }
            }
            else
            {
                Response.Write("Nope!");
            }
        }
    }
}