using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace Computer_Scince_Institute_Website
{
    public partial class rig : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("male");
            DropDownList1.Items.Add("female");
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("evening");
            DropDownList2.Items.Add("morning");
            DropDownList3.Items.Add("parallel");
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("database");
            DropDownList3.Items.Add("it");
            DropDownList3.Items.Add("network");
        }

        private void lable()
        {
            if (TextBox2.Text == "")
            {
                Label2.Visible = true;
            }
            if (TextBox3.Text == "")
            {
                Label3.Visible = true;
            }
            if (TextBox4.Text == "")
            {
                Label4.Visible = true;
            }
            if (Calendar1.SelectedDate == null)
            {
                Label5.Visible = true;
            }
            if (DropDownList1.Text == "")
            {
                Label6.Visible = true;
            }
            if (DropDownList2.Text == "")
            {
                Label8.Visible = true;
            }
            if (DropDownList3.Text == "")
            {
                Label1.Visible = true;
            }
            if (TextBox10.Text == "")
            {
                Label10.Visible = true;
            }
            if (TextBox11.Text == "")
            {
                Label11.Visible = true;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            lable();
            dbcon.con.Close();
            dbcon.con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("insert into rig(f_name,s_name,th_name,b_day,gender,sis,dp,t_d,em)" +
                    " values(@a,@b,@c,@d,@e,@f,@g,@h,@i)", dbcon.con);
                cmd.Parameters.AddWithValue("@a", TextBox2.Text);
                cmd.Parameters.AddWithValue("@b", TextBox3.Text);
                cmd.Parameters.AddWithValue("@c", TextBox4.Text);
                cmd.Parameters.AddWithValue("@d", Calendar1.SelectedDate);
                cmd.Parameters.AddWithValue("@e", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@f", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@g", DropDownList3.Text);
                cmd.Parameters.AddWithValue("@h", TextBox10.Text);
                cmd.Parameters.AddWithValue("@i", TextBox11.Text);
                cmd.ExecuteNonQuery();

                MailAddress maFrom = new MailAddress("yahyahiwa3@gmail.com", " computer scince institue");
                MailAddress maTo = new MailAddress(TextBox11.Text, "you");
                string sPassword = "22625381@aa";
                string sSubject = "Rigester";
                string sBody = "hi: "+TextBox2.Text+" "+TextBox3.Text+" "+TextBox4.Text
                    +"\nYour Birthday: "+Calendar1.SelectedDate+ToString()+"\n"+
                    "Gender: "+DropDownList1.Text+"\nDepartmet: "+DropDownList3.Text+"\n"+
                    "Tewlve Degree: "+TextBox10.Text;
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
                Response.Write(ex.Message);
            }
            dbcon.con.Close();






        }
    }
}