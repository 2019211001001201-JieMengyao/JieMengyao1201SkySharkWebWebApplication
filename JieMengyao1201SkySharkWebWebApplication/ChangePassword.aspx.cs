using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace JieMengyao1201SkySharkWebWebApplication
{
    public partial class Change : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usrRole"] == null)
            {
                Response.Redirect("default.aspx");
            }
            if (Session["usrRole"].ToString() == "Admin")
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                Label1.Text = "Change password for " + Session["username"].ToString();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                string updateSql = "UPDATE dtUsers SET Password = @Password,PasswordChanged = '1' WHERE (Username =@original-username)";
                SqlCommand cmd = new SqlCommand(updateSql, conn);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@orginal_username", Session["usrName"]);


                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/NA/ManageUser.aspx");

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            }
    }
}