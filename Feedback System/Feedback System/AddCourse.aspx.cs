using System;
using System.IO;
using System.Web.UI;

namespace Feedback_System
{
    public partial class AddCourse : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddCourse_Click(object sender, EventArgs e)
        {
            string courseName = courseNameTextBox.Text;
            string courseId = courseIdTextBox.Text;
            string courseDescription = courseDescriptionTextBox.Text;

            string courseDetails = $"{courseName};{courseId};{courseDescription},";

            string filePath = Server.MapPath("~/App_Data/Courses.txt");

            try
            {
                using (StreamWriter sw = File.AppendText(filePath))
                {
                    sw.WriteLine(courseDetails);
                }

                Response.Write("<script>alert('Course added successfully!');</script>");
                ClearFields();
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
        }

        private void ClearFields()
        {
            courseNameTextBox.Text = string.Empty;
            courseIdTextBox.Text = string.Empty;
            courseDescriptionTextBox.Text = string.Empty;
        }

        

        protected void Addcourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCourse.aspx");
        }

        protected void AddFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddQuestion.aspx");
        }

        protected void ShowCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCourse.aspx");
        }
        protected void AddStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddStudent.aspx");
        }

        protected void ShowStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowStudents.aspx");
        }
        protected void ShowResult_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowResult.aspx");
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

    }
}
