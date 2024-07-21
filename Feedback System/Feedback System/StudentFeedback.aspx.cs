using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Feedback_System
{
    public partial class StudentFeedback : System.Web.UI.Page
    {

        private const int TotalQuestions = 10;//      >>>>>>>
        private string[] questions;






        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                submit.CssClass = "Hidden";
                Button2.CssClass = "Hidden";
                lblQuestion.CssClass = "Hidden";
                OptionsList.CssClass = "Hidden";

                ExecuteCommonCode();

            }
        }











        protected void validationCustom04_SelectedIndexChanged(object sender, EventArgs e)
        {



            //lblQuestion.Text = "esraa";  



            //    //    OptionsList.CssClass = "";
            //    //    Button2.CssClass = "btn btn-primary";
            //    //    submit.CssClass = "hidden";

            //    string selectedValue = validationCustom04.SelectedValue.Trim();
            //    string question_file = $"{selectedValue}_questions.txt";
            //    string file = Server.MapPath($"~/App_Data/Courses_Questions/{question_file}");



            //    try
            //    {
            //        if (File.Exists(file))
            //        {
            //            questions = File.ReadAllLines(file);
            //            Session["Questions"] = questions;
            //            Session["QuestionNumber"] = 1;
            //            Session["Feedback"] = new string[TotalQuestions];

            //            DisplayCurrentQuestion();
            //        }
            //        else
            //        {
            //            lblQuestion.Text = "Questions file not found.";
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        lblQuestion.Text = $"Error: {ex.Message}";
            //    }
            //}

            //private void DisplayCurrentQuestion()
            //{

            //    int questionNumber = Convert.ToInt32(Session["QuestionNumber"]);
            //    questions = (string[])Session["Questions"];

            //    if (questionNumber <= questions.Length)
            //    {
            //        string[] questionParts = questions[questionNumber - 1].Split(';');
            //        lblQuestion.Text = questionParts.Length > 1 ? questionParts[1].Trim() : "Question format incorrect.";
            //    }
            //    else
            //    {
            //        lblQuestion.Text = "No more questions.";
            //        //OptionsList.CssClass = "hidden";
            //        //Button2.CssClass = "hidden";
            //        //submit.CssClass = "btn btn-primary";
            //    }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(OptionsList.SelectedValue))
            {
                int questionNumber = Convert.ToInt32(Session["QuestionNumber"]);
                string[] feedback = (string[])Session["Feedback"];
                feedback[questionNumber - 1] = OptionsList.SelectedValue;

                Session["Feedback"] = feedback;
                Session["QuestionNumber"] = questionNumber + 1;

                DisplayCurrentQuestion();
                OptionsList.ClearSelection();
                validationCustom04.Items.Clear();
                ExecuteCommonCode();



            }
        }




        protected void Submit_Click(object sender, EventArgs e)
        {
            string selectedCourse = validationCustom04.SelectedValue.Trim();
            string studentEmail = Session["StudentEmail"].ToString();

            // Fetch student ID from Student_List.txt using email
            string studentId = GetStudentIdByEmail(studentEmail);
            string[] feedback = (string[])Session["Feedback"];

            // Construct feedback entry for all questions
            string feedbackEntry = $"{studentId};";
            for (int i = 0; i < feedback.Length; i++)
            {
                feedbackEntry += $"Q{i + 1}:{feedback[i]},";
            }
            feedbackEntry = feedbackEntry.TrimEnd(',') + ";";

            // Append feedback to course feedback file
            string feedbackFilePath = Server.MapPath($"~/App_Data/Courses_Feedbacks/{selectedCourse}.txt");

            using (StreamWriter sw = File.AppendText(feedbackFilePath))
            {
                sw.WriteLine(feedbackEntry);
            }

            lblQuestion.Text = "Feedback submitted successfully!";
            //    OptionsList.ClearSelection();
            OptionsList.CssClass = "Hidden";
            submit.CssClass = "Hidden";
            Button2.CssClass = "Hidden";
            //}

            string GetStudentIdByEmail(string email)
            {
                string filePath = Server.MapPath("~/App_Data/Student_List.txt");
                string[] lines = File.ReadAllLines(filePath);

                foreach (string line in lines)
                {
                    string[] fields = line.Split(';');
                    if (fields[2].Trim().Equals(email, StringComparison.OrdinalIgnoreCase))
                    {
                        return fields[0].Trim(); // Assuming student ID is the first field
                    }
                }
                return string.Empty;
            }
            validationCustom04.Items.Clear();
            ExecuteCommonCode();
        }






        protected void OptionsList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }






        private void ExecuteCommonCode()
        {




            // Read student email from log.txt
            string logPath = Server.MapPath("~/App_Data/log.txt");
            string[] logLines = File.ReadAllLines(logPath);
            string[] logFields = logLines[0].Split(';');
            string targetEmail = logFields[1].Trim();
            Session["StudentEmail"] = targetEmail;

            // Load courses for the student
            string filePath = Server.MapPath("~/App_Data/Student_List.txt");
            string[] lines = File.ReadAllLines(filePath);

            foreach (string line in lines)
            {
                string[] fields = line.Split(';');
                string email = fields[2].Trim();
                string idToCheck = fields[0].Trim(); // Assuming student ID is the first field

                if (email.Equals(targetEmail, StringComparison.OrdinalIgnoreCase))
                {
                    string[] courses = fields.Skip(3).ToArray();
                    string[] coursrs_splited = courses[0].Split(',');

                    foreach (string course in coursrs_splited)
                    {
                        string file = Server.MapPath($"~/App_Data/Courses_Feedbacks/{course}.txt");
                        if (!File.Exists(file)) continue; // Skip if file does not exist

                        string[] allLines = File.ReadAllLines(file);

                        if (allLines.Length == 0)
                        {
                            // File is empty, add course to dropdown list
                            validationCustom04.Items.Add(new ListItem(course.Trim(), course.Trim()));
                        }
                        else
                        {
                            bool idExists = false;

                            foreach (string l in allLines)
                            {
                                string[] parts = l.Split(';');
                                string idFeedback = parts[0].Trim();

                                if (idFeedback == idToCheck)
                                {
                                    idExists = true;
                                    //break;
                                }
                            }

                            if (!idExists)
                            {
                                validationCustom04.Items.Add(new ListItem(course.Trim(), course.Trim()));
                            }
                        }
                    }

                    break; // Break after processing the matched email
                }
            }


        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {



            submit.CssClass = "Hidden";
            Button2.CssClass = "btn btn-success";
            lblQuestion.CssClass = "";
            OptionsList.CssClass = "";

            string selectedValue = validationCustom04.SelectedValue.Trim();
            string question_file = $"{selectedValue}_questions.txt";
            string file = Server.MapPath($"~/App_Data/Courses_Questions/{question_file}");



            try
            {
                if (File.Exists(file))
                {
                    questions = File.ReadAllLines(file);
                    Session["Questions"] = questions;
                    Session["QuestionNumber"] = 1;
                    Session["Feedback"] = new string[TotalQuestions];

                    DisplayCurrentQuestion();
                }
                else
                {
                    lblQuestion.Text = "Feedback submitted successfully! Evaluation completed.";


                    submit.CssClass = "Hidden";
                    Button2.CssClass = "Hidden";
                    lblQuestion.CssClass = "Hidden";
                    OptionsList.CssClass = "Hidden";

                }
            }
            catch (Exception ex)
            {
                lblQuestion.Text = $"Error: {ex.Message}";
            }
        }

        //private void DisplayCurrentQuestion()
        //{

        //    int questionNumber = Convert.ToInt32(Session["QuestionNumber"]);
        //    questions = (string[])Session["Questions"];

        //    if (questionNumber <questions.Length)
        //    {
        //        string[] questionParts = questions[questionNumber - 1].Split(';');
        //        lblQuestion.Text = questionParts.Length > 1 ? questionParts[1].Trim() : "Question format incorrect.";


        //        if (questionNumber > questions.Length - 1)
        //        {
        //            Button2.CssClass = "Hidden";
        //            submit.CssClass = "btn btn-primary";
        //        }





        //    }
        //    else
        //    {
        //        lblQuestion.Text = "No more questions.";
        //        OptionsList.CssClass = "hidden";


        //    }
        //}




        private void DisplayCurrentQuestion()
        {
            int questionNumber = Convert.ToInt32(Session["QuestionNumber"]);
            questions = (string[])Session["Questions"];

            if (questionNumber <= questions.Length)
            {
                string[] questionParts = questions[questionNumber - 1].Split(';');
                lblQuestion.Text = questionParts.Length > 1 ? questionParts[1].Trim() : "Question format incorrect.";
            }

            if (questionNumber > questions.Length)
            {
                OptionsList.CssClass = "hidden";
                Button2.CssClass = "Hidden";
                submit.CssClass = "btn btn-success";
            }
            else
            {
                OptionsList.CssClass = "";
                Button2.CssClass = "btn btn-success";
                submit.CssClass = "Hidden";
            }
        }


    }




}