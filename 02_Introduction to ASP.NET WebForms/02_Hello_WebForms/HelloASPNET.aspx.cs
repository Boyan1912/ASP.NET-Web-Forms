using System;
using System.Web.UI.WebControls;

namespace _02_Hello_WebForms
{
    public partial class HelloASPNET : System.Web.UI.Page
    {
        
        protected void ChangeSourceBtn_Click(object sender, EventArgs e)
        {
            string source = ".aspx";
            if (this.Panel.BackColor == System.Drawing.Color.Tomato)
            {
                source = ".cs";
                this.Panel.BackColor = System.Drawing.Color.Crimson;
            }
            else
            {
                this.Panel.BackColor = System.Drawing.Color.Tomato;
            }

            this.Panel.Controls.Clear();
            var text = new Label();
            text.Text = string.Format("<h1>Hello, ASP.NET from {0}</h1>", source);
            this.Panel.Controls.Add(text);
        }
    }
}