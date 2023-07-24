using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Computer_Scince_Institute_Website
{
    public partial class log : System.Web.UI.Page
    {

        SqlCommand cmd;
        SqlDataReader dr1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dbcon.user = TextBox1.Text;
            string v = "";
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select username,pass,per from usr where username='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'", dbcon.con);
            dr1 = cmd.ExecuteReader();
            while (dr1.Read())
            {
                    v = dr1.GetString(2);
            }
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select username,pass,per from usr where username='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'", dbcon.con);
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                dbcon.check = true;
                if (v == "std")
                {
                    Response.Redirect("~/student.aspx");
                }
                else if (v == "tch")
                {
                    Response.Redirect("~/teacher.aspx");
                }
                else if (v == "adm")
                {
                    Response.Redirect("~/admin.aspx");
                }
            }
            dbcon.con.Close();
        }
    }
}