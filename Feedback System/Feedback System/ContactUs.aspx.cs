using System;
using System.IO;

namespace Feedback_System
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string comment = txtComment.Text.Trim();
            string file = Server.MapPath("~/App_Data/ContatUs.txt");
            string formattedText = $"Name: {name}\nEmail: {email}\nComment: {comment}\n";

            try
            {
                if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(comment))
                {
                    if (File.Exists(file))
                    {
                        File.AppendAllText(file, formattedText);
                    }
                    else
                    {
                        File.WriteAllText(file, formattedText);
                    }
                    lblMessage.Text = "Feedback submitted successfully!";
                    ClearFields(); // Clear form fields after successful submission
                }
                else
                {
                    lblMessage.Text = "Please fill in all fields.";
                }
            }
            catch (UnauthorizedAccessException ex)
            {
                lblMessage.Text = "Error: Unauthorized access to file. Please contact the system administrator.";
                // Log the exception or take appropriate action
            }
            catch (DirectoryNotFoundException ex)
            {
                lblMessage.Text = "Error: Directory not found. Please contact the system administrator.";
                // Log the exception or take appropriate action
            }
            catch (IOException ex)
            {
                lblMessage.Text = "Error: File operation failed. Please try again later.";
                // Log the exception or take appropriate action
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                // Log the exception or take appropriate action
            }
        }

        private void ClearFields()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtComment.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}
