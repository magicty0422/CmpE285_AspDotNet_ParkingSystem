using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlClient;
namespace NewProject
{
    public partial class PassPurchaseSummary : System.Web.UI.Page
    {
        //Class Variable.
        SqlConnection con;
        String sqlQuery = "";
        String userName = "";
        String passType = "";
        String cardType = "";
        String nameOnCard = "";
        Int64 cardNumber = 0;
        DateTime currentDate = DateTime.Today;
        SqlCommand sqlCommand = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            userName = (String)Session["user_name"];
            passType = (String)Session["pass_type"];
            cardType = (String)Session["card_type"];
            nameOnCard = (String)Session["name_on_card"];
            cardNumber = (Int64)Session["card_number"];
            TextBox5.Text = "" + cardNumber;

            TextBox1.Text = (String)Session["user_name"];
            TextBox2.Text = (String)Session["pass_type"];
            TextBox3.Text = (String)Session["card_type"];
            TextBox4.Text = (String)Session["name_on_card"];
            TextBox5.Text = "" + (Int64)Session["card_number"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionASPX"].ConnectionString);
            if (passType.Equals("monthly"))
            {
                sqlQuery = "INSERT INTO tbl_studentpassholder (user_name, pass_type, purchase_date, expiration_date) values ('" + userName + "','" + passType + "','" + currentDate + "','" + currentDate.AddMonths(1) + "');";
            }
            else if (passType.Equals("yearly"))
            {
                sqlQuery = "INSERT INTO tbl_studentpassholder (user_name, pass_type, purchase_date, expiration_date) values ('" + userName + "','" + passType + "','" + currentDate + "','" + currentDate.AddMonths(12) + "');";
            }
            else if (passType.Equals("fiveyearly"))
            {
                sqlQuery = "INSERT INTO tbl_studentpassholder (user_name, pass_type, purchase_date, expiration_date) values ('" + userName + "','" + passType + "','" + currentDate + "','" + currentDate.AddYears(5) + "');";
            }

            //String errorMessage = sqlQuery;
            //Session["errorMsg"] = sqlQuery;
            //Response.Redirect("/BookForPass.aspx");

            try
            {
                //Check if connection object is not null.
                if (con != null)
                {
                    con.Open();
                    sqlCommand = new SqlCommand();
                    sqlCommand.CommandText = sqlQuery;
                    sqlCommand.Connection = con;

                    //Check if the insert query executed successfully.
                    if (sqlCommand.ExecuteNonQuery() > 0)
                    {
                        Response.Redirect("/PurchaseConfirmationPage.aspx", false);
                        //panel1.Visible = false;
                    }
                    else
                    {
                        String errorMessage = "Some Issue Occured While Generating The Pass For You. No Deduction In Amount Done. Sorry For The Inconveniency!!";
                        Session["errorMsg"] = errorMessage;
                        Response.Redirect("/BookForPass.aspx");
                        //MessageBox.Show("We are facing some issues while registering you. Sorry for the inconvenience.");
                    }
                }
            }
            catch (Exception ex)
            {
                String errorMessage = ex.Message;
                Session["errorMsg"] = errorMessage;
                Response.Redirect("/BookForPass.aspx");
            }
        }
    }
}