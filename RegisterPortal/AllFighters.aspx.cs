using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace RegisterPortal
{
    public partial class AllFighters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] != null)
            {
                Label1.Text = Session["User"].ToString();
                Button1.Visible = true;
            }
            Connexion.Cn.Open();
            Connexion.cmd = Connexion.Cn.CreateCommand();
            Connexion.cmd.CommandType = CommandType.Text;
            Connexion.cmd.CommandText = ("select count(*) from T ");
            int tal = Convert.ToInt32(Connexion.cmd.ExecuteScalar().ToString());
            if (tal >= 10)
            {
                Connexion.Cn.Close();
                GridView1.Visible = true;
                Label2.Text = "ja";
            }
            else
            {
                Connexion.Cn.Close();
                GridView1.Visible = false;
                Label2.Text = "Nej";
            }
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Welcome.aspx");
        }
    }
}