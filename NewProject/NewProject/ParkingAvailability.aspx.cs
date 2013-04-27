using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

namespace NewProject
{
    public partial class ParkingAvailability : System.Web.UI.Page
    {
        String connectionString = "Data Source=GIFTSON;Initial Catalog=ParkingSystem;User ID=sa;Password=12345";
        string selectSQL = null;
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataAdapter adapter = null;
        DataTable dtReport = null;
        Hashtable bookedSlots = null;

        string selectedGarageName;
        String selectedDate;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                selectedGarageName = Request.QueryString["GarageName"].ToString();
                selectedDate = Request.QueryString["Date"].ToString();
                ViewState["vGarageName"] = selectedGarageName;
                ViewState["vSelectedDate"] = selectedDate;
                ViewState["vUserName"] = "CmpE 285 Rockers";

                lblDisplayHeader.Text = "Parking availability for " + selectedGarageName + " on " + selectedDate;

                selectSQL = "select pa.Location_id, ps.Floor, [0-2] as c3, [2-4] as c4, [4-6] as c5, [6-8] as c6, [8-10] as c7, [10-12] as c8, [12-14] as c9, [14-16] as c10, [16-18] as c11, [18-20] as c12, [20-22] as c13, [22-24] as c14 " +
                            "from ParkingSystem.dbo.ParkingAvailability pa,ParkingSystem.dbo.ParkingSpace ps " +
                            "where pa.Location_id = ps.Location_id " +
                            "and " +
                            "date='" + selectedDate + "' " +
                            "and " +
                            "ps.GarageName = '" + selectedGarageName + "'";

                con = new SqlConnection(connectionString);
                cmd = new SqlCommand(selectSQL, con);
                adapter = new SqlDataAdapter(cmd);
                dtReport = new DataTable();

                adapter.Fill(dtReport);

                slotAvailableGrid.DataSource = dtReport;
                slotAvailableGrid.DataBind();

                for (int i = 2; i < 14; i++)
                {
                    for (int j = 0; j < slotAvailableGrid.Rows.Count; j++)
                    {
                        CheckBox chkbox = (CheckBox)slotAvailableGrid.Rows[j].Cells[i].FindControl("checkbox" + (i).ToString());
                        if (chkbox != null)
                        {

                            if (chkbox.Checked == false)
                            {
                                slotAvailableGrid.Rows[j].Cells[i].BackColor = System.Drawing.Color.Green;
                            }
                            else
                            {
                                slotAvailableGrid.Rows[j].Cells[i].BackColor = System.Drawing.Color.Red;
                                chkbox.Enabled = false;
                            }

                        }

                    }

                }
            }


        }

        protected void Checkbox2_CheckedChanged(object sender, EventArgs e)
        {
            //Button1.Text = ((CheckBox)sender).Checked.ToString();
            bookedSlots = new Hashtable();
            foreach (GridViewRow row in slotAvailableGrid.Rows)
            {
                int j = 0;
                for (int i = 2; i < 14; i++)
                {
                    CheckBox chkbox = (CheckBox)row.Cells[i].FindControl("checkbox" + (i).ToString());
                    if (chkbox.Checked == true)
                    {
                        if (row.Cells[i].BackColor == System.Drawing.Color.Green)
                        {
                            row.Cells[i].BackColor = System.Drawing.Color.Gray;

                            bookedSlots.Add(row.Cells[0].Text + (i - 2).ToString(), (i - 2).ToString());
                        }
                        else if (row.Cells[i].BackColor == System.Drawing.Color.Gray)
                        {
                            bookedSlots.Add(row.Cells[0].Text + (i - 2).ToString(), (i - 2).ToString());
                        }

                    }
                    else if (chkbox.Checked == false && row.Cells[i].BackColor == System.Drawing.Color.Gray)
                    {
                        row.Cells[i].BackColor = System.Drawing.Color.Green;
                        bookedSlots.Remove(row.Cells[0].Text + (i - 2).ToString());
                        //bookedSlots.r
                    }
                }
            }
            ViewState["vBookedSlots"] = bookedSlots;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //CheckBox chkbox = (CheckBox)slotAvailableGrid.Rows[0].Cells[3].FindControl("checkbox2");
            //Button1.Text = chkbox.Checked.ToString();
            //bookedSlots = new Hashtable();
            //foreach (GridViewRow row in slotAvailableGrid.Rows)
            //{
            //    for (int i = 2; i < 14; i++)
            //    {
            //        CheckBox chkbox = (CheckBox)row.Cells[i].FindControl("checkbox" + (i).ToString());
            //        if (row.Cells[i].BackColor == System.Drawing.Color.Green && chkbox.Checked == true)
            //        {
            //            bookedSlots.Add(row.Cells[0].Text, row.Cells[i]);
            //        }
            //    }

            //}

            ////Response.Redirect("BookingConfirmation.aspx?key=" + bookedSlots.ToString());
            bookedSlots = (Hashtable)ViewState["vBookedSlots"];

            Session["bookedSlots"] = bookedSlots;
            //foreach (DictionaryEntry entry in bookedSlots)
            //    Label1.Text = Label1.Text + "key -> " + entry.Key.ToString() + "," + entry.Value.ToString() + "\n";
            Response.Redirect("BookingConfirmation.aspx");
            ////foreach (DictionaryEntry entry in bookedSlots)
            ////    lblDisplayHeader.Text = lblDisplayHeader.Text + "\n" + entry.Key.ToString() + " -> " + entry.Value.ToString();

        }
    }
}