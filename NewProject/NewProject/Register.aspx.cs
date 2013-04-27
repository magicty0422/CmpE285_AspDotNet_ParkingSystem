using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;


namespace NewProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

            Guid userFKey;

            MembershipUser mu= Membership.GetUser(CreateUserWizard1.UserName);
            userFKey=(Guid)mu.ProviderUserKey;

            TextBox cuwTb = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("userName");
            // Custom Dropdownlist
            DropDownList cuwDdl = (DropDownList)CreateUserWizardStep1.ContentTemplateContainer.FindControl("DropDownList1");

            string userName = CreateUserWizard1.UserName;
            string password = CreateUserWizard1.Password;
            string email=CreateUserWizard1.Email;
            string sQuestion = CreateUserWizard1.Question;
            string sAnswer = CreateUserWizard1.Answer;
            string type = cuwDdl.SelectedIndex.ToString();

            string conString = ConfigurationManager.ConnectionStrings["ConnectionASPX"].ConnectionString;
            using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(conString))
            {
                //' declare the command that will be used to execute the select statement 
                SqlCommand com = new SqlCommand("Insert into dbo.Registration values('" + userName + "','" + password + "','" + email + "','" + sQuestion + "','" + sAnswer + "','abc')", con);

                con.Open();
                //' execute the select statment 
                com.ExecuteNonQuery();
              
            }
          
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    

         protected void CreateUserWizard1_CreatingUser(object sender, LoginCancelEventArgs e)
         {
          
         }

         protected void CreateUserWizard1_Load(object sender, EventArgs e)
         {

         }

         protected void Email_Load(object sender, EventArgs e)
         {

         }

                 
    }
}
