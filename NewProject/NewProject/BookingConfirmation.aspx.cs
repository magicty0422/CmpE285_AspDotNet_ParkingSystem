using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace NewProject
{
    public partial class BookingConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["bookedSlots"] != null)
            {
                Hashtable bookedSlots = (Hashtable)Session["bookedSlots"];
                foreach (DictionaryEntry entry in bookedSlots)
                    Label1.Text = Label1.Text + "\n" + entry.Key.ToString() + " -> " + entry.Value.ToString();
            }

        }
    }
}