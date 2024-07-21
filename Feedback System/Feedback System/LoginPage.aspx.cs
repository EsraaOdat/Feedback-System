using System;
using System.IO;
using System.Web.UI;

namespace Feedback_System
{
    public partial class LoginPage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load initialization if needed
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string id = ID.Text.Trim(); // Assuming ID is the TextBox ID
            string email = Email.Text.Trim(); // Assuming Email is the TextBox Email

            bool isAdmin = ValidateAdmin(id, email);
            bool isStudent = ValidateStudent(id, email);

            if (isAdmin)
            {
                Response.Redirect("Dashboard.aspx");
            }
            else if (isStudent)
            {
                Response.Redirect("WelcomePage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid ID or Email');</script>");
            }
        }

        private bool ValidateAdmin(string id, string email)
        {
            string adminFilePath = Server.MapPath("~/App_Data/admin.txt");

            if (File.Exists(adminFilePath))
            {
                string[] lines = File.ReadAllLines(adminFilePath);
                foreach (string line in lines)
                {
                    string[] fields = line.Split(';');
                    if (fields.Length >= 2 && fields[0].Trim() == id && fields[1].Trim() == email)
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        private bool ValidateStudent(string id, string email)
        {
            string studentListFilePath = Server.MapPath("~/App_Data/Student_List.txt");

            if (File.Exists(studentListFilePath))
            {
                string[] lines = File.ReadAllLines(studentListFilePath);
                foreach (string line in lines)
                {
                    string[] fields = line.Split(';');
                    if (fields.Length >= 4 && fields[0].Trim() == id && fields[2].Trim() == email)
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
