using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Feedback_System
{
    public partial class ShowStudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve data from query string
                string studentName = Request.QueryString["id"];
                lblStudentName.Text = studentName;

                string studentId = Request.QueryString["name"];
                lblStudent_Name.Text = studentId;

                // Populate the dropdown list with course names that have feedback
                PopulateCourseDropDownList(studentName);
            }
        }

        private void PopulateCourseDropDownList(string studentId)
        {
            string feedbackFolderPath = Server.MapPath("~/App_Data/Courses_Feedbacks");
            DirectoryInfo feedbackDirectory = new DirectoryInfo(feedbackFolderPath);
            FileInfo[] feedbackFiles = feedbackDirectory.GetFiles("*.txt");

            HashSet<string> coursesWithFeedback = new HashSet<string>();

            // Check each feedback file for the student ID
            foreach (var file in feedbackFiles)
            {
                string[] lines = File.ReadAllLines(file.FullName);
                foreach (var line in lines)
                {
                    if (line.StartsWith(studentId + ";"))
                    {
                        string courseName = Path.GetFileNameWithoutExtension(file.Name);
                        coursesWithFeedback.Add(courseName);
                        break; // No need to check further in this file
                    }
                }
            }

            // Populate dropdown list
            courseDropDownList.Items.Clear();
            foreach (string course in coursesWithFeedback)
            {
                courseDropDownList.Items.Add(new ListItem(course, course));
            }
        }


        protected void courseDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string studentName = lblStudentName.Text.Split(' ')[0].ToLower();
            string courseName = courseDropDownList.SelectedValue;
            DisplayStudentFeedback(studentName, courseName);
        }

        private void DisplayStudentFeedback(string studentName, string courseName)
        {
            string feedbackFilePath = Server.MapPath($"~/App_Data/Courses_Feedbacks/{courseName}.txt");
            string questionsFilePath = Server.MapPath($"~/App_Data/Courses_Questions/{courseName}_questions.txt");

            if (File.Exists(feedbackFilePath) && File.Exists(questionsFilePath))
            {
                string[] feedbackLines = File.ReadAllLines(feedbackFilePath);
                string[] questionLines = File.ReadAllLines(questionsFilePath);

                Dictionary<string, string> feedbackDict = GetFeedbackForStudent(feedbackLines, studentName);
                Dictionary<string, string> questionDict = GetQuestions(questionLines);

                questionsPanel.Controls.Clear();
                foreach (var item in feedbackDict)
                {
                    string questionId = item.Key;
                    string answer = "";

                    switch (item.Value)
                    {
                        case "1":
                            answer += "Poor";
                            break;
                        case "2":
                            answer += "Good";
                            break;
                        case "3":
                            answer += "Very Good";
                            break;
                        case "4":
                            answer += "Excellent";
                            break;

                    }
                    string question = questionDict.ContainsKey(questionId) ? questionDict[questionId] : "Unknown Question";

                    questionsPanel.Controls.Add(new LiteralControl($"<p><strong>Question:</strong> {question}</p>"));
                    questionsPanel.Controls.Add(new LiteralControl($"<p><strong>Answer:</strong> {answer}</p>"));
                    questionsPanel.Controls.Add(new LiteralControl("<hr />")); // Adding horizontal line as a separator
                }
            }
            else
            {
                // Handle file not found scenario
                questionsPanel.Controls.Clear();
                questionsPanel.Controls.Add(new LiteralControl("<p>No data found for the selected course.</p>"));
            }
        }

        private Dictionary<string, string> GetFeedbackForStudent(string[] feedbackLines, string studentName)
        {
            Dictionary<string, string> feedbackDict = new Dictionary<string, string>();
            foreach (string line in feedbackLines)
            {
                if (!string.IsNullOrEmpty(line) && line.StartsWith(studentName, StringComparison.OrdinalIgnoreCase))
                {
                    string[] parts = line.Split(';');
                    if (parts.Length >= 2)
                    {
                        string[] feedbacks = parts[1].Split(',');
                        foreach (string feedback in feedbacks)
                        {
                            string[] feedbackParts = feedback.Split(':');
                            if (feedbackParts.Length == 2)
                            {
                                string questionId = feedbackParts[0].Trim();
                                string answer = feedbackParts[1].Trim();
                                feedbackDict[questionId] = answer;
                            }
                        }
                    }
                }
            }
            return feedbackDict;
        }

        private Dictionary<string, string> GetQuestions(string[] questionLines)
        {
            Dictionary<string, string> questionDict = new Dictionary<string, string>();
            foreach (string line in questionLines)
            {
                if (!string.IsNullOrEmpty(line))
                {
                    string[] parts = line.Split(';');
                    if (parts.Length == 2)
                    {
                        string questionId = parts[0].Trim();
                        string question = parts[1].Trim();
                        questionDict[questionId] = question;
                    }
                }
            }
            return questionDict;
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
