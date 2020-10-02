using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //if (Session["role"].Equals(""))
                if (string.IsNullOrEmpty((string)Session["role"]))
                {
                    //LinkButton12.Visible = true; // VIEW BOOKS LINK BUTTON
                    LinkButton1.Visible = true; // VIEW BOOKS LINK BUTTON
                    LinkButton2.Visible = true; // USER LOGIN LINK BUTTON
                    LinkButton3.Visible = true; // USER SIGNUP LINK BUTTON
                    LinkButton4.Visible = false; // LOGOUT LINK BUTTON
                    LinkButton11.Visible = false; // HELLO USER MESSAGE LINK BUTTON

                    LinkButton5.Visible = true; // ADMIN LOGIN LINK BUTTON
                    LinkButton6.Visible = false; // AUTHOR MANAGEMENT LINK BUTTON
                    LinkButton7.Visible = false; // PUBLISHER MANAGEMENT LINK BUTTON
                    LinkButton8.Visible = false; // BOOK INVENTORY LINK BUTTON
                    //LinkButton9.Visible = false; // BOOK ISSUING LINK BUTTON
                    LinkButton10.Visible = false; // MEMBER MANAGEMENT LINK BUTTON
                }
                else if (Session["role"].Equals("user"))
                {
                    //LinkButton12.Visible = true; // VIEW BOOKS LINK BUTTON
                    LinkButton1.Visible = true; // VIEW BOOKS LINK BUTTON
                    LinkButton2.Visible = false; // USER LOGIN LINK BUTTON
                    LinkButton3.Visible = false; // USER SINGUP LINK BUTTON
                    LinkButton4.Visible = true; // LOGOUT LINK BUTTON
                    LinkButton11.Visible = true; // HELLO USER MESSAGE LINK BUTTON
                    LinkButton11.Text = "Hello " + Session["fullname"].ToString();

                    LinkButton5.Visible = true; // ADMIN LOGIN LINK BUTTON
                    LinkButton6.Visible = false; // AUTHOR MANAGEMENT LINK BUTTON
                    LinkButton7.Visible = false; // PUBLISHER MANAGEMENT LINK BUTTON
                    LinkButton8.Visible = false; // BOOK INVENTORY LINK BUTTON
                    //LinkButton9.Visible = false; // BOOK ISSUING LINK BUTTON
                    LinkButton10.Visible = false; // MEMBER MANAGEMENT LINK BUTTON
                }
                else if (Session["role"].Equals("admin"))
                {
                    // LinkButton12.Visible = true; // VIEW BOOKS LINK BUTTON
                    LinkButton1.Visible = true;  // VIEW BOOKS LINK BUTTON
                    LinkButton2.Visible = false; // USER LOGIN LINK BUTTON
                    LinkButton3.Visible = false; // USER SINGUP LINK BUTTON
                    LinkButton4.Visible = true; // LOGOUT LINK BUTTON
                    LinkButton11.Visible = true; // HELLO USER MESSAGE LINK BUTTON
                    LinkButton11.Text = "Hello Admin";

                    LinkButton5.Visible = false; // ADMIN LOGIN LINK BUTTON
                    LinkButton6.Visible = true; // AUTHOR MANAGEMENT LINK BUTTON
                    LinkButton7.Visible = true; // PUBLISHER MANAGEMENT LINK BUTTON
                    LinkButton8.Visible = true; // BOOK INVENTORY LINK BUTTON
                    //LinkButton9.Visible = true; // BOOK ISSUING LINK BUTTON
                    LinkButton10.Visible = true; // MEMBER MANAGEMENT LINK BUTTON
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("author_management.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("publisher_management.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("book_inventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("book_issue.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("member_management.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_singup.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "user";
            Session["status"] = "";

            //LinkButton12.Visible = true; // VIEW BOOKS LINK BUTTON
            LinkButton1.Visible = true; // VIEW BOOKS LINK BUTTON
            LinkButton2.Visible = true; // USER LOGIN LINK BUTTON
            LinkButton3.Visible = true; // USER SIGNUP LINK BUTTON
            LinkButton4.Visible = false; // LOGOUT LINK BUTTON
            LinkButton11.Visible = false; // HELLO USER MESSAGE LINK BUTTON

            LinkButton5.Visible = true; // ADMIN LOGIN LINK BUTTON
            LinkButton6.Visible = false; // AUTHOR MANAGEMENT LINK BUTTON
            LinkButton7.Visible = false; // PUBLISHER MANAGEMENT LINK BUTTON
            LinkButton8.Visible = false; // BOOK INVENTORY LINK BUTTON
            //LinkButton9.Visible = false; // BOOK ISSUING LINK BUTTON
            LinkButton10.Visible = false; // MEMBER MANAGEMENT LINK BUTTON
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }
    }
}