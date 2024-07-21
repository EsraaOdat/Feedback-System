using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Feedback_System
{
    public partial class ShowStudents : System.Web.UI.Page
    {
        private List<Student> students;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["SortDirection"] = "ASC";
                LoadStudentData();
            }
        }

        private void LoadStudentData(string searchTerm = "", string sortExpression = "", string sortDirection = "ASC")
        {
            string path = Server.MapPath("~/App_Data/Student_List.txt");
            if (File.Exists(path))
            {
                students = new List<Student>();
                string[] lines = File.ReadAllLines(path);
                foreach (string line in lines)
                {
                    string[] parts = line.Split(';');
                    if (parts.Length >= 4)
                    {
                        string id = parts[0];
                        string name = parts[1];
                        string email = parts[2];
                        string courses = string.Join(", ", parts, 3, parts.Length - 3);

                        students.Add(new Student { ID = id, Name = name, Email = email, Courses = courses });
                    }
                }

                // Filter based on search term using IndexOf for case-insensitive search
                if (!string.IsNullOrEmpty(searchTerm))
                {
                    students = students.Where(s => s.Name.IndexOf(searchTerm, StringComparison.OrdinalIgnoreCase) >= 0 ||
                                                    s.Email.IndexOf(searchTerm, StringComparison.OrdinalIgnoreCase) >= 0 ||
                                                    s.Courses.IndexOf(searchTerm, StringComparison.OrdinalIgnoreCase) >= 0).ToList();
                }

                // Sort the data dynamically
                if (!string.IsNullOrEmpty(sortExpression))
                {
                    var param = typeof(Student).GetProperty(sortExpression);
                    if (param != null)
                    {
                        if (sortDirection == "ASC")
                        {
                            students = students.OrderBy(s => param.GetValue(s, null)).ToList();
                        }
                        else
                        {
                            students = students.OrderByDescending(s => param.GetValue(s, null)).ToList();
                        }
                    }
                }

                GridView1.DataSource = students;
                GridView1.DataBind();
            }
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            string searchTerm = txtSearch.Text.Trim();
            LoadStudentData(searchTerm);
        }

        protected void btnSort_Click(object sender, EventArgs e)
        {
            string sortExpression = ddlSort.SelectedValue;
            string sortDirection = ViewState["SortDirection"].ToString();

            // Toggle sort direction
            sortDirection = (sortDirection == "ASC") ? "DESC" : "ASC";
            ViewState["SortDirection"] = sortDirection;

            LoadStudentData(sortExpression: sortExpression, sortDirection: sortDirection);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(';');
                string id = commandArgs[0];
                string name = commandArgs[1];
                string email = commandArgs[2];
                string courses = commandArgs[3];

                Response.Redirect($"ShowStudentDetails.aspx?id={id}&name={name}&email={email}&courses={courses}");
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


    public class Student
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Courses { get; set; }
    }

}
