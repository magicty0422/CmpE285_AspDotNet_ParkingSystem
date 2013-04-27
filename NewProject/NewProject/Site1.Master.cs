using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            if (Session["New"] != null && Session["New"].ToString() != "")
            {
                hiddenlabel.Visible = true;
                hiddenlabel.Text += Session["New"].ToString();
                HyperLink4.Visible = false;
                HyperLink6.Visible=true;
                HyperLink6.Text = "Logout";
             
            }
            else
            {
                 HyperLink4.Text = "Login";
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();

        }
        
     
        
       
    }
}