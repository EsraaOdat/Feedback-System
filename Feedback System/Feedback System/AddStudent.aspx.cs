using System;
using System.IO;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Feedback_System
{
    public partial class AddStudent : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCourses();
            }
        }

        private void LoadCourses()
        {
            string coursesFilePath = Server.MapPath("~/App_Data/Courses.txt");
            if (File.Exists(coursesFilePath))
            {
                string[] lines = File.ReadAllLines(coursesFilePath);
                foreach (string line in lines)
                {
                    string[] parts = line.Split(';');
                    if (parts.Length >= 3)
                    {
                        string courseName = parts[0].Trim();
                        //ListItem listItem = new ListItem(parts[2].Trim(), courseName);
                        chkCourses.Items.Add(courseName);
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = txtId.Text.Trim();
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();

            var selectedCourses = chkCourses.Items.Cast<ListItem>()
               .Where(li => li.Selected)
               .Select(li => li.Value);

            string coursesString = $"{string.Join(", ", selectedCourses)}";

            string studentListFilePath = Server.MapPath("~/App_Data/Student_List.txt");
            string studentInfo = $"{id};{name};{email};{coursesString}";
            AppendToStudentList(studentListFilePath, studentInfo);

            foreach (string courseName in selectedCourses)
            {
                AddStudentToCourseFile(courseName, id, name, email);
            }

            ClearFormFields();
        }

        private void AppendToStudentList(string filePath, string studentInfo)
        {
            if (!File.Exists(filePath))
            {
                File.WriteAllText(filePath, studentInfo + Environment.NewLine);
            }
            else
            {
                string[] existingLines = File.ReadAllLines(filePath);
                bool studentExists = false;

                foreach (string line in existingLines)
                {
                    if (line.StartsWith(studentInfo.Split(';')[0]))
                    {
                        studentExists = true;
                        break;
                    }
                }

                if (!studentExists)
                {
                    File.AppendAllText(filePath, studentInfo + Environment.NewLine);
                }
            }
        }

        private void AddStudentToCourseFile(string courseName, string id, string name, string email)
        {
            string courseFilePath = Server.MapPath($"~/App_Data/Courses/{courseName}.txt");
            string studentInfo = $"{id};{name};{email}";

            if (File.Exists(courseFilePath))
            {
                string[] existingLines = File.ReadAllLines(courseFilePath);
                foreach (string line in existingLines)
                {
                    if (line.StartsWith(id))
                    {
                        return;
                    }
                }
            }
            else
            {
                File.WriteAllText(courseFilePath, "");
            }

            File.AppendAllText(courseFilePath, studentInfo + Environment.NewLine);
        }

        private void ClearFormFields()
        {
            txtId.Text = "";
            txtName.Text = "";
            txtEmail.Text = "";
            foreach (ListItem item in chkCourses.Items)
            {
                item.Selected = false;
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
