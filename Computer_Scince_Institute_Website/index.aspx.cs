using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Computer_Scince_Institute_Website
{
    public partial class index : System.Web.UI.Page
    {
        SqlDataReader dr; SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                degre();
            }
        }

        private void degre()
        {
            try
            {
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("select min(deger),max(deger) from std s inner join usr u on " +
                    "(s.s_id=u.username) where s.salwrgrtn >= '1/1/" + DateTime.Now.Year + "' and s.sstm='evening' and dep='database'", dbcon.con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label7.Text = Label7.Text + dr.GetInt32(0).ToString() + "-" + dr.GetInt32(1).ToString();
                }
                dbcon.con.Close();
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("select min(deger),max(deger) from std s inner join usr u on " +
                    "(s.s_id=u.username) where s.salwrgrtn >= '1/1/" + DateTime.Now.Year + "' and s.sstm='parallel' and dep='database'", dbcon.con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label8.Text = Label8.Text + dr.GetInt32(0).ToString() + "-" + dr.GetInt32(1).ToString();
                }
                dbcon.con.Close();
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("select min(deger),max(deger) from std s inner join usr u on " +
                    "(s.s_id=u.username) where s.salwrgrtn >= '1/1/" + DateTime.Now.Year + "' and s.sstm='morning' and dep='database'", dbcon.con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label9.Text = Label9.Text + dr.GetInt32(0).ToString() + "-" + dr.GetInt32(1).ToString();
                }
                dbcon.con.Close();
                ////////////////////////////////network//////////////////////////////
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("select min(deger),max(deger) from std s inner join usr u on " +
                    "(s.s_id=u.username) where s.salwrgrtn >= '1/1/" + DateTime.Now.Year + "' and s.sstm='evening' and dep='network'", dbcon.con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label1.Text = Label1.Text + dr.GetInt32(0).ToString() + "-" + dr.GetInt32(1).ToString();
                }
                dbcon.con.Close();
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("select min(deger),max(deger) from std s inner join usr u on " +
                    "(s.s_id=u.username) where s.salwrgrtn >= '1/1/" + DateTime.Now.Year + "' and s.sstm='parallel' and dep='network'", dbcon.con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label2.Text = Label2.Text + dr.GetInt32(0).ToString() + "-" + dr.GetInt32(1).ToString();
                }
                dbcon.con.Close();
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("select min(deger),max(deger) from std s inner join usr u on " +
                    "(s.s_id=u.username) where s.salwrgrtn >= '1/1/" + DateTime.Now.Year + "' and s.sstm='morning' and dep='network'", dbcon.con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label3.Text = Label3.Text + dr.GetInt32(0).ToString() + "-" + dr.GetInt32(1).ToString();
                }
                dbcon.con.Close();
                ////////////////////////////////network//////////////////////////////
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("select min(deger),max(deger) from std s inner join usr u on " +
                    "(s.s_id=u.username) where s.salwrgrtn >= '1/1/" + DateTime.Now.Year + "' and s.sstm='evening' and dep='it'", dbcon.con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label4.Text = Label4.Text + dr.GetInt32(0).ToString() + "-" + dr.GetInt32(1).ToString();
                }
                dbcon.con.Close();
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("select min(deger),max(deger) from std s inner join usr u on " +
                    "(s.s_id=u.username) where s.salwrgrtn >= '1/1/" + DateTime.Now.Year + "' and s.sstm='parallel' and dep='it'", dbcon.con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label5.Text = Label5.Text + dr.GetInt32(0).ToString() + "-" + dr.GetInt32(1).ToString();
                }
                dbcon.con.Close();
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("select min(deger),max(deger) from std s inner join usr u on " +
                    "(s.s_id=u.username) where s.salwrgrtn >= '1/1/" + DateTime.Now.Year + "' and s.sstm='morning' and dep='it'", dbcon.con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label6.Text = Label6.Text + dr.GetInt32(0).ToString() + "-" + dr.GetInt32(1).ToString();
                }
                dbcon.con.Close();
            }
            catch  { }
        } 
    }
}