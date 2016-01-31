using System;
using System.Reflection;

namespace _02_Hello_WebForms
{
    public partial class CurrentAssembly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string assembly = Assembly.GetExecutingAssembly().Location;
            this.Show.Text = assembly;
        }
    }
}