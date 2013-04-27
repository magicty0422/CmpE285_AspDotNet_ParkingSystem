using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewProject
{
    public partial class CardDetails : System.Web.UI.Page
    {
        long cardNumber = 0;
        String cardType = "";
        String nameOnCard = "";
        String cardExpMonth = "";
        String cardExpYear = "";
        int cvv = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cardNumber = long.Parse(TextBox1.Text);
            cardType = DropDownList1.SelectedValue;
            nameOnCard = TextBox2.Text;
            cardExpMonth = DropDownList2.SelectedValue;
            cardExpYear = DropDownList3.SelectedValue;
            cvv = int.Parse(TextBox3.Text);

            Session["card_number"] = cardNumber;
            Session["card_type"] = cardType;
            Session["name_on_card"] = nameOnCard;
            Session["exp_month"] = cardExpMonth;
            Session["exp_year"] = cardExpYear;
            Session["cvv"] = cvv;

            Response.Redirect("/PassPurchaseSummary.aspx");
        }
    }
}