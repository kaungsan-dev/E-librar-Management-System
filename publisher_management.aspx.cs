using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class publisher_management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //ADD BUTTON CLICK
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfPublisherExists())
            {
                Response.Write("<script>alert('This Publisher ID already exists!');</script>");
            }
            else
            {
                addNewPublisher();
            }
        }

        //UPDATE BUTTON CLICK
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfPublisherExists())
            {
                updatePublisher();
            }
            else
            {
                Response.Write("<script>alert('Publisher does not exits');</script>");
            }
        }

        //DELETE BUTTON CLICK
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfPublisherExists())
            {
                deletePublisher();
            }
            else
            {
                Response.Write("<script>alert('Publisher does not exits');</script>");
            }
        }

        void deletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from publisher_master_tbl WHERE publisher_id='" + TextBox9.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher Delete Successful')</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void updatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE publisher_master_tbl SET publisher_name=@publisher_name WHERE publisher_id='" + TextBox9.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@publisher_name", TextBox1.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher Updated Successful')</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void addNewPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO publisher_master_tbl(publisher_id, publisher_name) values(@publisher_id,@publisher_name)", con);
                cmd.Parameters.AddWithValue("@publisher_id", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox1.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher added successful!'),</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfPublisherExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM publisher_master_tbl where " +
                    "publisher_id='" + TextBox9.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void clearForm()
        {
            TextBox9.Text = "";
            TextBox1.Text = "";
        }
    }
}