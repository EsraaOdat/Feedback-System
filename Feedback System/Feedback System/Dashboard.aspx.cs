using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Feedback_System
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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