using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MediRecipe
{
    public partial class register : System.Web.UI.Page
    {
        protected void btnregsitration_Click(object sender, EventArgs e)
        {
            string strcon = "Data Source=DESKTOP-693JKF9;database=ProjectDB;integrated security = true;";
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("spregistration", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter sp1 = new SqlParameter("UserName", username.Text);
            SqlParameter sp2 = new SqlParameter("EmailID", emailid.Text);
            SqlParameter sp3 = new SqlParameter("Password", password.Text);
            com.Parameters.Add(sp1);
            com.Parameters.Add(sp2);
            com.Parameters.Add(sp3);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            con.Close();
            lblmsg.Text = "Registration Successful! log in!";
            lblmsg.Visible = true;

        }
       
    }
}