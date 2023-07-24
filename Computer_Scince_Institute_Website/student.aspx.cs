using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Net.Mail;
using System.Net;

namespace Computer_Scince_Institute_Website
{
    public partial class student : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (dbcon.check == false)
            {
                Response.Redirect("~/log.aspx");
            }
            p1.Visible = false;
            p2.Visible = false;
            e1.Visible = false;
            e2.Visible = false;
            pas1.Visible = false;
            pas2.Visible = false;
            user();
            if (!Page.IsPostBack)
            {
                listBoxFile();
            }
            attend();

        }

        private void attend()
        {
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select * from attend where s_id='" + dbcon.user + "'", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ListBox2.Items.Add(dr.GetString(1) + ": " + dr.GetDateTime(2).ToString());
            }
            dbcon.con.Close();
        }
        private void listBoxFile()
        {
            ListBox1.Items.Clear();
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select username,f_name,s_name,th_name from usr u inner join tch t " +
            " on(u.username = t.id) where per = 'tch' and u.dep =" +
            " (select dep from usr where username ='" + dbcon.user + "')", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ListBox1.Items.Add(dr.GetString(0) + ":" + dr.GetString(1) + " " + dr.GetString(2));
            }
            dbcon.con.Close();
        }
        private void listBoxFileSearch()
        {
            ListBox1.Items.Clear();
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select username,f_name,s_name,th_name from usr u inner join tch t " +
            " on(u.username = t.id) where per = 'tch' and u.dep =" +
            " (select dep from usr where username ='" + dbcon.user + "') and( u.username='" + TextBox1.Text + "' or t.f_name='" + TextBox1.Text + "')", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ListBox1.Items.Add(dr.GetString(0) + ":" + dr.GetString(1) + " " + dr.GetString(2));
            }
            dbcon.con.Close();
        }



        private void user()
        {

            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select * from std where s_id='" + dbcon.user + "'", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Literal1.Text = dr.GetString(1) + " " + dr.GetString(2) + " " + dr.GetString(3);
                userinfo.InnerHtml = "ID: " + dr.GetString(0) + "<br />" +
                    "Birthday: " + dr.GetDateTime(4).ToShortDateString() + "<br />" +
                    "Gender: " + dr.GetString(5) + "<br />" +
                    "System: " + dr.GetString(7) + "<br />" +
                    "Simster: " + dr.GetInt32(8).ToString() + "<br />";
                Image1.ImageUrl = dr.GetString(10);
            }
            dbcon.con.Close();
            /////////////////////////////////////////////
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select * from email where id='" + dbcon.user + "'", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label lb = new Label();
                lb.Text = "Email: " + dr.GetString(1) + "<br />";
                userinfo.Controls.Add(lb);
            }
            dbcon.con.Close();
            /////////////////////////////////////////////
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select * from phone where id='" + dbcon.user + "'", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label lb = new Label();
                lb.Text = "Phone: " + dr.GetString(1) + "<br />";
                userinfo.Controls.Add(lb);
            }
            dbcon.con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
        }

        private void tb(int sim)
        {
            int lenght = 0;
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select count(id) from deg", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lenght = dr.GetInt32(0);
            }
            HtmlTableRow[] TableRows = new HtmlTableRow[lenght];
            HtmlTableCell[] tableCells = new HtmlTableCell[lenght * 9];
            dbcon.con.Close();
            dbcon.con.Open();
            int i = 0;
            int k = 0;
            cmd = new SqlCommand("select sub.sub_name, deg.sim, xaib, quez, assim, rep, med, t_exam, p_exam" +
            " from sub inner join deg on (sub.sub_id = deg.sub) where deg.id = '"+dbcon.user+"' and sub.sim =" + sim + " ", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                try
                {
                    TableRows[i] = new HtmlTableRow();
                TableRows[i].ID = "tr" + i;
                for (int j = 0; j < 9; j++)
                {
                    tableCells[k] = new HtmlTableCell();
                    if (j == 0)
                    {
                        tableCells[k].InnerText = dr.GetString(j);
                    }
                    else
                    {
                        tableCells[k].InnerText = dr.GetInt32(j).ToString();
                    }
                    TableRows[i].Controls.Add(tableCells[k]);
                    k++;
                }
                table.Controls.Add(TableRows[i]);
                    i++;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            dbcon.con.Close();
        }
        private void chat()
        {

            int lenght = 0;
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select count(s_id) from fil", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lenght = dr.GetInt32(0);
            }
            LinkButton[] linkButtons = new LinkButton[lenght];
            Label[] time = new Label[lenght];
            Label[] name = new Label[lenght];
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select * from fil", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                //linkButtons[i] = new LinkButton();
                //time[i] = new Label();
                //name[i] = new Label();
                //time[i].Text = dr.GetDateTime(3).ToString();
                //time[i].CssClass = "d-block time";
                //time[i].ID = "time" + i;
                //mychat.Controls.Add(time[i]);
                //name[i].Text = dr.GetString(6);
                //name[i].CssClass = "d-block name";
                //name[i].ID = "name" + i;
                //mychat.Controls.Add(name[i]);
                //linkButtons[i].CssClass = "d-block linkbutton";
                //linkButtons[i].Text = dr.GetString(4);
                //linkButtons[i].ID = "LinkButton" + i;
                //mychat.Controls.Add(linkButtons[i]);
                //i++;
            }
            dbcon.con.Close();

        }

       

        protected void Button2_Click1(object sender, EventArgs e)
        {
            tb(1);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            tb(2);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            tb(3);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            tb(4);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            listBoxFileSearch();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            try
            {
                string a = ListBox1.SelectedItem.ToString();
            string[] b = a.Split(':');
            string email = "";
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select em from tch where id='" + b[0] + "'", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                email = dr.GetString(0);
            }
            dbcon.con.Close();
          
                MailAddress maFrom = new MailAddress("yahyahiwa3@gmail.com", "yahya hiwa");
                MailAddress maTo = new MailAddress(email, "yahya hiwa");
                string sPassword = "22625381@aa";
                string sSubject = "student";
                string sBody = TextArea1.Value;
                new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(maFrom.Address, sPassword)
                }.Send(new MailMessage(maFrom, maTo) { Subject = sSubject, Body = sBody });
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }



        private void download()
        {
            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=MyFile.pdf");
            Response.TransmitFile(Server.MapPath("~/data/New Text Document (2).txt"));
            Response.End();
        }


        protected void Button12_Click(object sender, EventArgs e)
        {
            mychat.Controls.Clear();
            string a = ListBox1.SelectedItem.ToString();
            string[] b = a.Split(':');
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select * from fil where (send = '" + dbcon.user + "' and to_ = '" + b[0] + "')or(send = '" + b[0] + "' and to_ = '" + dbcon.user + "')", dbcon.con);
            dr = cmd.ExecuteReader();
            int i = 0;
            while (dr.Read())
            {
                Label time = new Label();
                time.ID = "time" + i;
                time.CssClass = "time text-white d-block mt-3";
                time.Text = dr.GetDateTime(4).ToString();
                mychat.Controls.Add(time);
                Label name = new Label();
                
                name.CssClass = "name text-white d-block";
                name.Text = dr.GetString(0);
                mychat.Controls.Add(name);
                Label note = new Label();
                note.CssClass = "note text-white d-block";
                note.Text = dr.GetString(3);
                mychat.Controls.Add(note);
                Button link = new Button();
                link.ID = "link" + i;
                link.Text = dr.GetString(2);
                link.Click += Link_Click;
                mychat.Controls.Add(link);
                i++;
            }

        }

        private void Link_Click(object sender, EventArgs e)
        {
            Response.Write("asdfg");
            Response.ContentType = "application/txt";
            Response.AppendHeader("Content-Disposition", "attachment; filename=\"~/data/New Text Document (2).txt\"");
            Response.TransmitFile(Server.MapPath("~/data/New Text Document (2).txt"));
            Response.End();
            throw new NotImplementedException();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "")
            {
                p2.Visible = true;
            }
            else
            {
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("delete from phone where id='"+dbcon.user+"' and ph='"+TextBox3.Text+"'", dbcon.con);
                cmd.ExecuteNonQuery();
                dbcon.con.Close();
                user();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "")
            {
                p1.Visible = true;
            }
            else
            {
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("insert phone values(@a,@b)", dbcon.con);
                cmd.Parameters.AddWithValue("@a", dbcon.user);
                cmd.Parameters.AddWithValue("@b", TextBox3.Text);
                cmd.ExecuteNonQuery();
                dbcon.con.Close();
                user();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (TextBox5.Text == "")
            {
                e1.Visible = true;
            }
            else
            {
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("insert email values(@a,@b)", dbcon.con);
                cmd.Parameters.AddWithValue("@a", dbcon.user);
                cmd.Parameters.AddWithValue("@b", TextBox5.Text);
                cmd.ExecuteNonQuery();
                dbcon.con.Close();
                user();
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (TextBox5.Text == "")
            {
                e2.Visible = true;
            }
            else
            {
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("delete from email where id='" + dbcon.user + "' and email='" + TextBox5.Text + "'", dbcon.con);
                cmd.ExecuteNonQuery();
                dbcon.con.Close();
                user();
            }

        }

        protected void Button8_Click(object sender, EventArgs e)
        {

            if (TextBox7.Text == "")
            {
                pas1.Visible = true;
            }
            if (TextBox8.Text == "")
            {
                pas2.Visible = true;
            }
            else
            {
                dbcon.con.Close();
                dbcon.con.Open();
                cmd = new SqlCommand("update usr set pass='" + TextBox8.Text + "' where username='" + dbcon.user + "' and pass='" + TextBox7.Text + "'", dbcon.con);
                cmd.ExecuteNonQuery();
                dbcon.con.Close();
                Label1.InnerText = "Password changed";
            }
        }
    }
}