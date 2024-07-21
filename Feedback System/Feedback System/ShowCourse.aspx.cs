using System;
using System.IO;
using System.Text;
using System.Web.UI;

namespace Feedback_System
{
    public partial class ShowCourse : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCourses();
            }
        }

        protected void courseDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadQuestions(courseDropDownList.SelectedValue);
        }

        private void LoadCourses()
        {
            string filePath = Server.MapPath("~/App_Data/Courses.txt");

            try
            {
                using (StreamReader sr = new StreamReader(filePath))
                {
                    string line;
                    while ((line = sr.ReadLine()) != null)
                    {
                        string[] courseDetails = line.Split(';');
                        if (courseDetails.Length > 0)
                        {
                            courseDropDownList.Items.Add(courseDetails[0]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
        }

        private void LoadQuestions(string courseName)
        {
            string filePath = Server.MapPath($"~/App_Data/Courses_Questions/{courseName}_questions.txt");

            try
            {
                StringBuilder sb = new StringBuilder();
                sb.Append("<div class='question-list'>");

                using (StreamReader sr = new StreamReader(filePath))
                {
                    string line;
                    while ((line = sr.ReadLine()) != null)
                    {
                        string[] question = line.Split(';');

                        sb.Append("<div class='question'>");
                        sb.Append($"{question[0]} : {question[1]}");
                        sb.Append("</div>");
                    }
                }

                sb.Append("</div>");
                questionsContainer.InnerHtml = sb.ToString();
            }
            catch (Exception ex)
            {
                questionsContainer.InnerHtml = $"<div class='alert alert-danger'>Error: {ex.Message}</div>";
            }
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
