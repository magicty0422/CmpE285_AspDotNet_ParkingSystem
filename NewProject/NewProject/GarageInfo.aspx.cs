using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace NewProject
{
    public partial class GarageInfo : System.Web.UI.Page
    {
        public static String val = null;

        String connectionString = "Data Source=GIFTSON;Initial Catalog=ParkingSystem;User ID=sa;Password=12345";
        string selectSQL = null;
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataAdapter adapter = null;
        DataTable dtReport = null;
        String date = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Calendar1.SelectedDate = System.DateTime.Now.AddDays(10);
            //Calendar1.SelectedDate = System.DateTime.Now;
            Calendar1_SelectionChanged(new object(), new EventArgs());
            Label1.Text = Calendar1.SelectedDate.ToString();
            //Label1.Text = val; 
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //DateTime date = Calendar1.SelectedDate.ToString("d"); ;
            Label1.Text = "success";
            //Label1.Text = Calendar1.SelectedDate.ToString();
            date = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Table1.Rows[0].Cells[3].Text = "Number of Available Space for: " + Calendar1.SelectedDate.ToString("MM-dd-yyyy");

            //Label1.Text = date;
            con = new SqlConnection(connectionString);

            //selectSQL = "select [0-2], [2-4], [4-6], [6-8], [8-10], [10-12], [12-14], [14-16], [16-18], [18-20], [20-22], [22-24]" +
            //            " from AccountManagement.dbo.ParkingAvailability table1" + 
            //            " where table1.GarageName = '" + garageName + "' and table1.Date = '" + date + "'";

            String garageName = "NorthGarage";
            selectSQL = getGarageAvailabilitySQL(garageName, date);

            cmd = new SqlCommand(selectSQL, con);
            adapter = new SqlDataAdapter(cmd);
            dtReport = new DataTable();
            adapter.Fill(dtReport);
            //foreach (TableRow row in Table1.Rows)
            //{

            //    row.Cells[3].Text = row.Cells.Count.ToString();
            //}
            int count = 0;

            foreach (DataRow row in dtReport.Rows)
            {
                for (int i = 0; i < 12; i++)
                {
                    //Label1.Text = Label1.Text + row[i].ToString();
                    if (row[i].ToString() == "True")
                        count += 1;
                }
            }
            Table1.Rows[1].Cells[3].Text = count.ToString();

            //LinkButton lnkBtnNorthGarage = new LinkButton();
            //lnkBtnNorthGarage.ID = "lnkBtnNorthGarage";
            if (count > 0)
            {
                Table1.Rows[1].Cells[3].Controls.Add(lnkBtnNorthGarage);
                lnkBtnNorthGarage.Text = count.ToString() + " (click here to book a slot)";
                lnkBtnNorthGarage.Visible = true;
            }
            else
            {
                Table1.Rows[1].Cells[3].Text = count.ToString() + " Sorry, no slots available. Try different date";
            }

            //lnkBtnNorthGarage.CommandArgument = "NorthGarage";
            //Garage South Garage

            garageName = "SouthGarage";
            selectSQL = getGarageAvailabilitySQL(garageName, date);

            cmd = new SqlCommand(selectSQL, con);
            adapter = new SqlDataAdapter(cmd);
            dtReport = new DataTable();
            adapter.Fill(dtReport);

            count = 0;

            foreach (DataRow row in dtReport.Rows)
            {
                for (int i = 0; i < 12; i++)
                {
                    //Label1.Text = Label1.Text + row[i].ToString();
                    if (row[i].ToString() == "True")
                        count += 1;
                }
            }
            Table1.Rows[2].Cells[3].Text = count.ToString();

            if (count > 0)
            {
                Table1.Rows[2].Cells[3].Controls.Add(lnkBtnSouthGarage);
                lnkBtnSouthGarage.Text = count.ToString() + " (click here to book a slot)";
                lnkBtnSouthGarage.Visible = true;
            }
            else
            {
                Table1.Rows[2].Cells[3].Text = count.ToString() + " Sorry, no slots available. Try different date";
            }

            //West Garage
            garageName = "WestGarage";
            selectSQL = getGarageAvailabilitySQL(garageName, date);

            cmd = new SqlCommand(selectSQL, con);
            adapter = new SqlDataAdapter(cmd);
            dtReport = new DataTable();
            adapter.Fill(dtReport);

            count = 0;

            foreach (DataRow row in dtReport.Rows)
            {
                for (int i = 0; i < 12; i++)
                {
                    //Label1.Text = Label1.Text + row[i].ToString();
                    if (row[i].ToString() == "True")
                        count += 1;
                }
            }
            Table1.Rows[3].Cells[3].Text = count.ToString();

            if (count > 0)
            {
                Table1.Rows[3].Cells[3].Controls.Add(lnkBtnWestGarage);
                lnkBtnWestGarage.Text = count.ToString() + " (click here to book a slot)";
                lnkBtnWestGarage.Visible = true;
            }
            else
            {
                Table1.Rows[3].Cells[3].Text = count.ToString() + " Sorry, no slots available. Try different date";
            }

        }

        private String getGarageAvailabilitySQL(String garageName, String date)
        {
            return "select [0-2], [2-4], [4-6], [6-8], [8-10], [10-12], [12-14], [14-16], [16-18], [18-20], [20-22], [22-24]" +
                        " from ParkingSystem.dbo.ParkingAvailability pa, " +
                               "ParkingSystem.dbo.ParkingSpace ps" +
                        " where pa.Location_id = ps.Location_id" +
                                " and " +
                                "date ='" + date + "'" +
                                " and " +
                                "ps.GarageName ='" + garageName + "'";

        }

        protected void lnkButton_Command(object sender, CommandEventArgs e)
        {
            if (((String)e.CommandArgument) == "NorthGarage")
                Label1.Text = "going to book for north garage";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Text = val;
        }

        protected void lnkBtnNorthGarage_Click(object sender, EventArgs e)
        {
            Response.Redirect("ParkingAvailability.aspx?GarageName=NorthGarage&Date=" + date);
        }

        protected void lnkBtnSouthGarage_Click(object sender, EventArgs e)
        {
            Response.Redirect("ParkingAvailability.aspx?GarageName=SouthGarage&Date=" + date);
        }

        protected void lnkBtnWestGarage_Click(object sender, EventArgs e)
        {
            Response.Redirect("ParkingAvailability.aspx?GarageName=WestGarage&Date=" + date);
        }

      

    }
}