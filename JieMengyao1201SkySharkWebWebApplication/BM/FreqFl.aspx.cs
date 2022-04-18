using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JieMengyao1201SkySharkWebWebApplication.BM
{
    public partial class FreqFl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            try
            {
                String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                string insertSql = "INSERT INTO dtFrequentFLiers Select EMail, Discount=@Discount from dtPassengerDetails where TotalTimesFLown>=@TotalTimesFLown";
                SqlCommand cmd = new SqlCommand(insertSql, conn);
                cmd.Parameters.AddWithValue("@Discount", lstDisc1.SelectedItem.Text.Trim());
                cmd.Parameters.AddWithValue("@TotalTimesFlown", listTimesFlown.SelectedItem.Text.Trim());
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Record Added";
                String selectSql = "SELECT * from dtFrequentFLiers";
                cmd = new SqlCommand(selectSql, conn);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet, "FrequentFLiers");
                DataView source = new DataView(dataSet.Tables["FrequentFLiers"]);
                DataGrid1.DataSource = source;
                DataGrid1.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            if (txtfare.Text == "" || txtfare.Text == null)
            {
                lblMessage.Text = "Invalid Parameter for fare ColLected";
                return;
            }
            try
            {
                String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                string insertSql = "INSERT INTO dtFrequentFLiers Select EMail, Discount=@Discount from dtPassengerDetails where FareCollected>=@FareCollected";
                SqlCommand cmd = new SqlCommand(insertSql, conn);
                cmd.Parameters.AddWithValue("@Discount", lstDisc2.SelectedItem.Text.Trim());
                cmd.Parameters.AddWithValue("@TotalTimesFlown", txtfare.Text.Trim());
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Record Added";
                String selectSql = "SELECT * from dtFrequentFLiers";
                cmd = new SqlCommand(selectSql, conn);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet, "FrequentFLiers");
                DataView source = new DataView(dataSet.Tables["FrequentFLiers"]);
                DataGrid1.DataSource = source;
                DataGrid1.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}