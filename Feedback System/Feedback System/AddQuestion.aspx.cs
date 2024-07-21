using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;

namespace Feedback_System
{
    public partial class AddQuestion : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCourses();
            }
        }

        protected void btnAddQuestion_Click(object sender, EventArgs e)
        {
            string courseName = courseDropDownList.SelectedValue;
            string questionText = questionTextBox.Text;

            string filePath = Server.MapPath($"~/App_Data/Courses_Questions/{courseName}_questions.txt");

            try
            {
                var questions = new List<string>();

                if (File.Exists(filePath))
                {
                    questions.AddRange(File.ReadAllLines(filePath));
                }

                // Check if there are already 10 questions
                if (questions.Count >= 10)
                {
                    // Display an error message or handle the situation
                    Response.Write("<script>alert('Cannot add more than 10 questions.');</script>");
                    return;
                }

                // Assign the next question ID
                string questionID = $"Q{questions.Count + 1}";
                string newQuestion = $"{questionID};{questionText}";

                // Add the new question
                questions.Add(newQuestion);

                // Write the updated questions back to the file
                File.WriteAllLines(filePath, questions.ToArray());

                Response.Write("<script>alert('Question added successfully!');</script>");

                // Check if the course now has 10 questions and remove it from the dropdown list
                if (questions.Count >= 10)
                {
                    courseDropDownList.Items.Remove(courseName);
                }

                ClearFields();
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
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
                            string courseName = courseDetails[0];
                            string questionFilePath = Server.MapPath($"~/App_Data/Courses_Questions/{courseName}_questions.txt");

                            // Check if the course already has 10 questions
                            if (File.Exists(questionFilePath))
                            {
                                var questions = File.ReadAllLines(questionFilePath);
                                if (questions.Length >= 10)
                                {
                                    continue; // Skip this course
                                }
                            }

                            courseDropDownList.Items.Add(courseName);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
        }

        private void ClearFields()
        {
            questionTextBox.Text = string.Empty;
            courseDropDownList.SelectedIndex = 0;
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
