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
            //TextBoxCountryCode.Text = DropDownList1.SelectedValue;
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBoxUsername.Text != "" && TextBoxFirstname.Text != "" && TextBoxLastname.Text != "" && TextBoxEmail.Text !="" && TextBoxCountryCode.Text != "" && TextBoxPhone.Text != "" && TextBoxPhone.Text.Length >= 8)
            {
                Connexion.Cn.Open();
                Connexion.cmd = Connexion.Cn.CreateCommand();
                Connexion.cmd.CommandType = CommandType.Text;
                Connexion.cmd.CommandText = ("INSERT INTO [User] values('" + TextBoxUsername.Text + "','" + 1234 + "','" + TextBoxFirstname.Text + "','" + TextBoxLastname.Text + "','" + TextBoxEmail.Text + "','" + TextBoxClub.Text + "','" + TextBoxCountryCode + " " + TextBoxPhone.Text + "')");
                Connexion.cmd.ExecuteNonQuery();
                Session["Login"] = TextBoxUsername.Text;
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
            
            if (DropDownList1.SelectedValue != "0")
            {
                TextBoxCountryCode.Text = DropDownList1.SelectedValue;
            }
            else
            {
                TextBoxCountryCode.Text = string.Empty;
            }
            
        }

        protected void DropDownList1_DataBinding(object sender, EventArgs e)
        {
        }
    }
}