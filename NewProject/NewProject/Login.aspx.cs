using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace NewProject
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionASPX"].ConnectionString);
            con.Open();
            string cmdLogin = "Select count(*) from Registration where UserName='" + TextBox1.Text + "'";
            SqlCommand checkLogin = new SqlCommand(cmdLogin,con);
            int temp = Convert.ToInt32(checkLogin.ExecuteScalar().ToString());
            if (temp == 1)
            {
                string cmdLogin2 = "Select Password from Registration where UserName='" + TextBox1.Text + "'";
                SqlCommand pass = new SqlCommand(cmdLogin2, con);
                string pwd = pass.ExecuteScalar().ToString();
                con.Close();
                if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin123")
                {
                    Session["New"] = TextBox1.Text;
                    Response.Redirect("Admin.aspx");

                }

                if (pwd == TextBox2.Text)
                {

                    Session["New"] = TextBox1.Text;
                    Response.Redirect("MainScreen.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid Password...";
                }
            }
            else
            {

                Label1.Visible = true;
                Label1.Text = "Invalid User Name...";
            }
            
          
        }
    }
}