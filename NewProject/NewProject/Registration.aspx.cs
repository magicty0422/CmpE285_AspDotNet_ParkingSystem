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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionASPX"].ConnectionString);
                con.Open();
                string query = "Select count(*) from Registration where UserName='" + TextBoxUN.Text + "'";
                SqlCommand userExisting = new SqlCommand(query, con);
                int temp = Convert.ToInt32(userExisting.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    Response.Write("User Name already Exists!!! <br/> Please Choose another User Name.");
                }
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionASPX"].ConnectionString);
            con.Open();
            string insertQuery = "Insert into Registration (UserName, Password, Email, FirstName, LastName, SQuestion, SAnswer, Type) values (@UserName, @Password, @Email, @FirstName, @LastName, @SQuestion, @SAnswer, @Type)";
            SqlCommand insertUser = new SqlCommand(insertQuery,con);
            insertUser.Parameters.AddWithValue("@UserName", TextBoxUN.Text);
            insertUser.Parameters.AddWithValue("@Password",TextBoxPass.Text);
            insertUser.Parameters.AddWithValue("@Email",TextBoxEmail.Text);
            insertUser.Parameters.AddWithValue("@FirstName",TextBoxFN.Text);
            insertUser.Parameters.AddWithValue("@LastName",TextBoxLN.Text);
            insertUser.Parameters.AddWithValue("@SQuestion",TextBoxSQ.Text);
            insertUser.Parameters.AddWithValue("@SAnswer",TextBoxSA.Text);
            insertUser.Parameters.AddWithValue("@Type",DropDownListType.SelectedItem.ToString());

            try
            {
                insertUser.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Login.aspx");
            }
            catch (Exception error)
            {
                Response.Write("<b>Exception Occurred... Try Again!!! </b>" + error);
            }
            finally
            {
                // Implement later if necessary
            }

        }
    }
}