using System;
using System.Web.UI.WebControls;

namespace _01_Hello
{
    public partial class HelloSomebody : System.Web.UI.Page
    {
        
        protected void ButtonName_Click(object sender, EventArgs e)
        {
            this.Response.Write(string.Format("<h1>Hello {0}!</h1>", this.TextBoxName.Text));
            this.LabelForName.Visible = false;
            this.TextBoxName.Width = Unit.Pixel(300);
            this.TextBoxName.Text = "Enter another name to congratulate.";
            this.TextBoxName.BorderWidth = Unit.Pixel(3);
            this.TextBoxName.BorderStyle = BorderStyle.Inset;
        }
    }
}