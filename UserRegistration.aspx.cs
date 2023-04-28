using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Text;
using System.Data;

namespace RegistrationForm
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            registerUser();
            InputName.Text = "";
            InputEmail.Text = "";
            InputPhone.Text = "";
            InputAddress.Text = "";
        }

        private void registerUser()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";
            //if (InputEmail.Text)
            //{

            //}
            queryStr = "INSERT INTO registration.user(name,email,phone,address)" + "VALUES('" + InputName.Text + "','" + InputEmail.Text + "','" + InputPhone.Text + "','" + InputAddress.Text + "')";
            
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            cmd.ExecuteReader();

            conn.Close();

            string message = "Registration successfully submitted!";
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('" + message + "');", true);

        }
    }
}