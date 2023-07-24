using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Computer_Scince_Institute_Website
{
    public class dbcon
    {
        public static string user = "";
        public static bool check = false;
        public static string dp = "database";
     public static SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8A3O2K0;Initial Catalog=csi_web_pro;Persist Security Info=True;User ID=sa;Password=sa");
    }
}























































