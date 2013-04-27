using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewProject
{
    public partial class BookForPass : System.Web.UI.Page
    {
        String userName = "";
        String passType = "";
        String errorMsg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            errorMsg = (String)Session["errorMsg"];
            if (errorMsg != null && !errorMsg.Equals(""))
            {
                Label1.Text = errorMsg;
                Label1.Visible = true;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            userName = TextBox1.Text;
            passType = DropDownList1.SelectedValue;
            Session["user_name"] = userName;
            Session["pass_type"] = passType;
            Response.Redirect("/CardDetails.aspx");
        }
    }
}