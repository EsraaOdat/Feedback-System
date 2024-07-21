using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;

namespace Feedback_System
{
    public partial class ShowFeedbackResult : System.Web.UI.Page
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
            ShowResults(courseDropDownList.SelectedValue);
        }

        private void LoadCourses()
        {
            try
            {
                string feedbackDirectoryPath = Server.MapPath("~/App_Data/Courses_Feedbacks");
                var feedbackFiles = Directory.GetFiles(feedbackDirectoryPath, "*.txt");

                foreach (var file in feedbackFiles)
                {
                    string fileName = Path.GetFileNameWithoutExtension(file);
                    courseDropDownList.Items.Add(new ListItem(fileName, file));
                }
            }
            catch (Exception ex)
            {
                ResultsLiteral.Text = $"<div class='alert alert-danger'>Error loading courses: {ex.Message}</div>";
            }
        }

        private void ShowResults(string filePath)
        {
            if (string.IsNullOrEmpty(filePath))
                return;

            try
            {
                string studentListPath = Server.MapPath("~/App_Data/Student_List.txt");

                var students = File.ReadAllLines(studentListPath)
                                   .Select(line => line.Split(';'))
                                   .Where(parts => parts.Length >= 3)
                                   .ToDictionary(parts => parts[0], parts => new
                                   {
                                       StudentID = parts[0],
                                       StudentName = parts[1],
                                       Email = parts[2],
                                       Courses = parts.Length > 3 ? parts[3].Split(',') : new string[] { }
                                   });

                var feedbacks = File.ReadAllLines(filePath)
                                    .Select(line => line.Split(';'))
                                    .Where(parts => parts.Length >= 3)
                                    .Select(parts => new
                                    {
                                        StudentID = parts[0],
                                        FeedbackScores = parts[1].Split(',')
                                                              .Select(f => f.Split(':')[1])
                                                              .Where(f => int.TryParse(f, out _))
                                                              .Select(f => int.Parse(f)).ToList()
                                    }).ToList();

                if (feedbacks.Count == 0)
                {
                    ResultsLiteral.Text = "<div class='alert alert-info'>No feedback available.</div>";
                    return;
                }

                // Calculate total possible score
                int totalPossibleScore = feedbacks.First().FeedbackScores.Count * 4;

                // Combine feedback scores with student information
                var studentResults = feedbacks
                    .Where(f => students.ContainsKey(f.StudentID))
                    .Select(f => new
                    {
                        f.StudentID,
                        StudentName = students[f.StudentID].StudentName,
                        CombinedScore = f.FeedbackScores.Sum(),
                        PercentageScore = (double)f.FeedbackScores.Sum() / totalPossibleScore * 100
                    }).ToList();

                // Calculate average percentage
                double averageFeedback = studentResults.Average(f => f.PercentageScore);

                // Determine background color based on average percentage
                string bgColor = averageFeedback >= 85 ? "background-color: lightgreen;" : "background-color: salmon;";

                // Build HTML for results
                var results = new StringBuilder();
                results.Append("<table class='table table-bordered feedback-table'>");
                results.Append("<tr><th>ID</th><th>Student</th><th>Combined Score</th><th>Feedback (%)</th></tr>");

                foreach (var result in studentResults)
                {
                    results.Append("<tr>");
                    results.Append($"<td>{result.StudentID}</td>");
                    results.Append($"<td>{result.StudentName}</td>");
                    results.Append($"<td>{result.CombinedScore}</td>");
                    results.Append($"<td>{result.PercentageScore:F2}%</td>");
                    results.Append("</tr>");
                }

                results.Append("</table>");
                results.Append($"<div class='alert alert-info' style='{bgColor}'>Average Feedback: {averageFeedback:F2}%</div>");

                ResultsLiteral.Text = results.ToString();
            }
            catch (Exception ex)
            {
                ResultsLiteral.Text = $"<div class='alert alert-danger'>Error: {ex.Message}</div>";
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
