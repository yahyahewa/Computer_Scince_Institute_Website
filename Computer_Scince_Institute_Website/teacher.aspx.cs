using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace Computer_Scince_Institute_Website
{
    public partial class teacher : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (dbcon.check == false)
            {
                Response.Redirect("~/log.aspx");
            }
            attend();
            listBoxFile();
        }
        private void listBoxFile()
        {
            ListBox1.Items.Clear();
            ListBox1.ForeColor = Color.White;
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select  s_id, f_name, s_name, th_name from std s inner " +
                                      "join usr u on (s.s_id = u.username)" +
"where sim = (select sim from tch where id = 'chra') and u.dep = (select dep from usr where username = 'chra')", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ListBox1.Items.Add(dr.GetString(0) + ":" + dr.GetString(1) + " " + dr.GetString(2));
            }
            dbcon.con.Close();
        }


        private void listBoxFilesearch()
        {
            ListBox1.Items.Clear();
            ListBox1.ForeColor = Color.White;
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select  s_id, f_name, s_name, th_name from std s inner " +
                                      "join usr u on (s.s_id = u.username)" +
"where sim = (select sim from tch where id = '"+dbcon.user+"') and u.dep = (select dep from usr where username = '"+dbcon.user+"' " +
"and s.s_id='"+TextBox11.Text+"')", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ListBox1.Items.Add(dr.GetString(0) + ":" + dr.GetString(1) + " " + dr.GetString(2));
            }
            dbcon.con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {{
                try
                {
                    dbcon.con.Close();
                    dbcon.con.Open();
                    cmd = new SqlCommand("update deg set sim=@a,xaib=@b,quez=@c,assim=@d,rep=@e,med=@f,t_exam=@g,p_exam=@h" +
                    " where sub = (select sub_id from t_sub where t_id = '" + dbcon.user + "') and id = '" + TextBox12.Text + "'", dbcon.con);
                    cmd.Parameters.AddWithValue("@a", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@b", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@c", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@d", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@e", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@f", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@g", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@h", TextBox10.Text);
                    cmd.ExecuteNonQuery();
                    Label1.Visible = true;
                    dbcon.con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message + "<br />" + ex.ToString());
                }
            }
        }
        private void attend()
        {
            CheckBoxList1.Items.Clear();
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select s.s_id, s.f_name,s.s_name, s.th_name from std s inner" +
                                   " join usr u on (s.s_id = u.username)" +
                  "where u.dep = (select dep from usr where username = '"+dbcon.user+"')", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CheckBoxList1.Items.Add(dr.GetString(0) + ":" + dr.GetString(1) + " " + dr.GetString(2) + " " + dr.GetString(3));
            }
            dbcon.con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox11.Text == "")
            {
                listBoxFile();
            }
            else
            {
                listBoxFilesearch();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            c();
            string sub = "";
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select s.sub_name from sub s inner join t_sub j on(s.sub_id=j.sub_id)" +
                "where j.t_id = (select id from tch where id = '" + dbcon.user + "')", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                sub = dr.GetString(0);
            }
            dbcon.con.Close();
            dbcon.con.Close();
            dbcon.con.Open();
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected == true)
                {
                    string a = CheckBoxList1.Items[i].ToString();
                    string[] b = a.Split(':');
                    cmd = new SqlCommand("insert attend values ('" + b[0] + "','" + sub + "','" + DateTime.Now + "')", dbcon.con);
                    cmd.ExecuteNonQuery();
                }
            }
            dbcon.con.Close();
        }

        //private void listBoxFileSearch()
        //{
        //    ListBox2.Items.Clear();
        //    dbcon.con.Close();
        //    dbcon.con.Open();
        //    cmd = new SqlCommand("select username,f_name,s_name,th_name from usr u inner join tch t " +
        //    " on(u.username = t.id) where per = 'tch' and u.dep =" +
        //    " (select dep from usr where username ='" + dbcon.user + "') and( u.username='" + TextBox1.Text + "' or t.f_name='" + TextBox1.Text + "')", dbcon.con);
        //    dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        ListBox2.Items.Add(dr.GetString(0) + ":" + dr.GetString(1) + " " + dr.GetString(2));
        //    }
        //    dbcon.con.Close();
        //}
        //private void listBoxFileSearch()
        //{
        //    ListBox2.Items.Clear();
        //    dbcon.con.Close();
        //    dbcon.con.Open();
        //    cmd = new SqlCommand("select username,f_name,s_name,th_name from usr u inner join tch t " +
        //    " on(u.username = t.id) where per = 'tch' and u.dep =" +
        //    " (select dep from usr where username ='" + dbcon.user + "') and( u.username='" + TextBox1.Text + "' or t.f_name='" + TextBox1.Text + "')", dbcon.con);
        //    dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        ListBox2.Items.Add(dr.GetString(0) + ":" + dr.GetString(1) + " " + dr.GetString(2));
        //    }
        //    dbcon.con.Close();
        //}
        private void c()
        {

            string sub = "";
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select s.sub_name from sub s inner join t_sub j on(s.sub_id=j.sub_id)" +
                "where j.t_id = (select id from tch where id = '" + dbcon.user + "')", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                sub = dr.GetString(0);
            }
            dbcon.con.Close();
            dbcon.con.Close();
            dbcon.con.Open();
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                    string a = CheckBoxList1.Items[i].ToString();
                    string[] b = a.Split(':');
                    cmd = new SqlCommand("insert attend values ('" + b[0] + "','" + sub + "','" + DateTime.Now + "')", dbcon.con);
                    cmd.ExecuteNonQuery();
            }
            dbcon.con.Close();
        }
        //private void listBoxFileSearch()
        //{
        //    ListBox2.Items.Clear();
        //    dbcon.con.Close();
        //    dbcon.con.Open();
        //    cmd = new SqlCommand("select username,f_name,s_name,th_name from usr u inner join tch t " +
        //    " on(u.username = t.id) where per = 'tch' and u.dep =" +
        //    " (select dep from usr where username ='" + dbcon.user + "') and( u.username='" + TextBox1.Text + "' or t.f_name='" + TextBox1.Text + "')", dbcon.con);
        //    dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        ListBox2.Items.Add(dr.GetString(0) + ":" + dr.GetString(1) + " " + dr.GetString(2));
        //    }
        //    dbcon.con.Close();
        //}

    }
}