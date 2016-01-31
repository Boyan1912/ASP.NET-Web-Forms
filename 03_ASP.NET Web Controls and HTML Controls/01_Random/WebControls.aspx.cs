using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01_Random
{
    public partial class WebControls : System.Web.UI.Page
    {
        
        protected void generator_Click(object sender, EventArgs e)
        {
            var rnd = new Random();
            string result = "";

            try
            {
                result = ((decimal)rnd.Next((int)decimal.Parse(this.Min.Text), (int)decimal.Parse(this.Max.Text))).ToString();
                
            }
            catch(Exception ex)
            {
                result = ex.Message;
            }
            finally
            {
                var textbox = new TextBox()
                {
                    Text = result,
                    Width = 300,
                    BackColor = System.Drawing.Color.LightPink
                };

                this.Wrapper.Controls.Add(textbox);
            }
        }
    }
}