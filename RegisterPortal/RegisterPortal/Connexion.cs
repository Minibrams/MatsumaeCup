using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace RegisterPortal
{
    public class Connexion
    { // AttachDbFilename "C:\Users\nikol\Desktop" skal ændres til hvor du ligger programmet
        public static SqlConnection Cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nikol\Desktop\Nymappe\RegisterPortal\RegisterPortal\App_Data\Contact.mdf;Integrated Security=True");
        public static  SqlCommand cmd = new SqlCommand();
        public static SqlDataReader dr;
    }
}