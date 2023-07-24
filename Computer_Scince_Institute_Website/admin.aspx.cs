using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Computer_Scince_Institute_Website
{
    public partial class admin : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (dbcon.check == false)
            {
                Response.Redirect("~/log.aspx");
            }
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("male");
            DropDownList1.Items.Add("female");
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("1");
            DropDownList3.Items.Add("2");
            DropDownList3.Items.Add("3");
            DropDownList3.Items.Add("4");
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("evening");
            DropDownList2.Items.Add("parallel");
            DropDownList2.Items.Add("morning");
           
        }
        private void lable()
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label8.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label13.Visible = false;
            ///////////////////////////////
            Label7.Visible = false;
            Label9.Visible = false;
            Label12.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            //////////////////////////////////
            Label21.Visible = false;
            Label17.Visible = false;
        }

        private void studentInsert()
        {

        }
        private string dep()
        {

            string dep = "";
            dbcon.con.Close();
            dbcon.con.Open();
            cmd = new SqlCommand("select * from usr where username ='" + dbcon.user + "'", dbcon.con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                dep = dr.GetString(2);
            }
            dbcon.con.Close();
            return dep;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string dp = dep();
            studentValidation();

            dbcon.con.Close();
            dbcon.con.Open();
            try
            {
                cmd = new SqlCommand("insert usr values('"+TextBox1.Text+"', '"+ TextBox11.Text + "', '"+dp+"', 'std')" +
                    "insert std values('"+ TextBox1 .Text+ "', '"+ TextBox2.Text + "', '"+ TextBox3.Text + "', '"+ TextBox4.Text + "'," +
                    " '"+ Calendar1.SelectedDate + "', '"+ DropDownList1.Text + "'," +
                    " '1/1/"+DateTime.Now.Year+"', '"+DropDownList2.Text+"', 1, "+ TextBox10.Text + ", '~/img/"+FileUpload1.FileName+"')", dbcon.con);
                cmd.ExecuteNonQuery();
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/data/") + fileName);
        }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
    dbcon.con.Close();
        }

        private void techValidation()
        {
            if (TextBox5.Text == "")
            {
                Label7.Visible = true;
            }
            if (TextBox6.Text == "")
            {
                Label9.Visible = true;
            }
            if (TextBox7.Text == "")
            {
                Label12.Visible = true;
            }
            if (TextBox8.Text == "")
            {
                Label14.Visible = true;
            }
            if (Calendar2.SelectedDate==null)
            {
                Label15.Visible = true;
            }
            if (DropDownList3.Text == "")
            {
                Label16.Visible = true;
            }
            if (TextBox12.Text == "")
            {
                Label19.Visible = true;
            }
            if (TextBox14.Text == "")
            {
                Label18.Visible = true;
            }
        }
        private void studentValidation()
        {
            if (TextBox1.Text == "")
            {
                Label1.Text = "* Enter Username";
                Label1.Visible = true;
            }
            if (TextBox2.Text == "")
            {
                Label2.Text = "* Enter First Name";
                Label2.Visible = true;
            }
            if (TextBox3.Text == "")
            {
                Label3.Text = "* Enter Second Name";
                Label3.Visible = true;
            }
            if (TextBox4.Text == "")
            {
                Label4.Text = "* Enter Third Name";
                Label4.Visible = true;
            }
            if (Calendar1.SelectedDate == null)
            {
                Label5.Text = "* Select Birthe Day";
                Label5.Visible = true;
            }
            if (DropDownList1.Text == "")
            {
                Label6.Text = "* Select Grnder";
                Label6.Visible = true;
            }
            if (DropDownList2.Text == "")
            {
                Label8.Text = "* Select System";
                Label8.Visible = true;
            }
            if (TextBox11.Text == "")
            {
                Label11.Text = "* Enter Password";
                Label11.Visible = true;
            }
            if (FileUpload1.FileName == "")
            {
                Label13.Text = "* Choose Image";
                Label13.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string dp = dep();
            techValidation();
            dbcon.con.Close();
            dbcon.con.Open();
            try
            {
                cmd = new SqlCommand("insert usr values ('" + TextBox5.Text + "','"
                    + TextBox12.Text + "','" + dp + "','tch')" +
                    " insert tch values('" + TextBox5.Text + "','" + TextBox6.Text + "'" +
                    " ,'" + TextBox7.Text + "','" + TextBox8.Text + "','" + Calendar2.SelectedDate + "'," + DropDownList3.Text + ",'"+TextBox14.Text+"')", dbcon.con);
                cmd.ExecuteNonQuery();
        }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
    dbcon.con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string dp = dep();
            techValidation();
            dbcon.con.Close();
            dbcon.con.Open();
            try
            {
                cmd = new SqlCommand("insert usr values ('" + TextBox5.Text + "','"
                    + TextBox12.Text + "','" + dp + "','adm')", dbcon.con);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            dbcon.con.Close();

        }
    }


}