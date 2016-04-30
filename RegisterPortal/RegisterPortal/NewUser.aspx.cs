using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace RegisterPortal
{
    public partial class NewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox5.Text = DropDownList1.SelectedValue;
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text !="" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox6.Text.Length >= 8)
            {
                Connexion.Cn.Open();
                Connexion.cmd = Connexion.Cn.CreateCommand();
                Connexion.cmd.CommandType = CommandType.Text;
                Connexion.cmd.CommandText = ("INSERT INTO [User] values('" + TextBox1.Text + "','" + 1234 + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')");
                Connexion.cmd.ExecuteNonQuery();
                Session["Login"] = TextBox1.Text;
                Connexion.Cn.Close();
                Response.Redirect("Sigin.aspx");
                
            }
            else
            {
                Connexion.Cn.Close();
                OKOrNot.Visible = true;
            }
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox5.Text = DropDownList1.SelectedValue;
        }

        protected void DropDownList1_DataBinding(object sender, EventArgs e)
        {
        }
    }
}