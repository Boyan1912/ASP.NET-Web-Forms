using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _03_StudentsAndCourses
{
    public partial class StudentsRegistration : System.Web.UI.Page
    {
        private string[] universities;
        private string[] specialties;
        private string[] courses;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.universities = "UNSS, Sofia, Plovdiv, Chernorizetz Hrabur, Amerikanski, TU, New Bulgarian".Split(',');

            foreach (var university in universities)
            {
                var li = new ListItem(university);
                this.UniversitiesTextBox.Items.Add(li);
            }

            this.specialties = "PC, Stuff, Work, Whatever, Else".Split(',');
            foreach (var spec in specialties)
            {
                var li = new ListItem(spec);
                this.SpecialtiesTextBox.Items.Add(li);
            }

            this.courses = "C#, JS, NodeJS, AngularJS, ASP.NET, ASP.NET MVC, DB, Java, C++, CSS, Mobile, Web, QA".Split(',');
            foreach (var course in this.courses)
            {
                var li = new ListItem(course);
                this.CoursesTextBox.Items.Add(li);
            }


        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            var firstName = this.FirstName.Text;
            var lastName = this.LastName.Text;
            var facNmbr = this.FacNumber.Text;
            var selectedUniversity = this.UniversitiesTextBox.SelectedValue;
            var selectedSpecialty = this.SpecialtiesTextBox.SelectedValue;

            var selectedCoursesIndexes = this.CoursesTextBox.GetSelectedIndices();
            List<string> selectedCourses = new List<string>();
            foreach (int index in selectedCoursesIndexes)
            {
                selectedCourses.Add(this.courses[index]);
            }

            var responsePanel = new Panel()
            {
                BackColor = System.Drawing.Color.LightSeaGreen,
                Width = Unit.Percentage(40),
                CssClass = "container pull-right affix-top",
                BorderStyle = BorderStyle.Solid,
                Wrap = true,
                ForeColor = System.Drawing.Color.BlueViolet,
                Height = Unit.Pixel(200)
            };

            var title = new Label()
            {
                Text = "<h2>Your Info: </h2>"
            };

            var info = new LiteralControl()
            {
                Text = string.Format("<p>{0} {1} with Faculty Number <strong>{2}</strong> has opted for {3} University, Specialty: {4} and has selected the following courses: {5}</p>", firstName, lastName, facNmbr, selectedUniversity, selectedSpecialty, string.Join(", ", selectedCourses)),
            };

            responsePanel.Controls.Add(title);
            responsePanel.Controls.Add(info);

            var body = this.BodyTag;
            body.Controls.Add(responsePanel);
        }
    }
}