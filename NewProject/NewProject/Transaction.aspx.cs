using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewProject
{
    public partial class Transaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label1.Visible = true;
                Label1.Text +=Session["New"].ToString();
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Please Login....";

               
            }
         }
           
      }
    }
