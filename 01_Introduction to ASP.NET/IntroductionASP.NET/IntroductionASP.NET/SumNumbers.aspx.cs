using System;
using System.Web.UI.WebControls;

namespace IntroductionASP.NET
{
    public partial class SumNumbers : System.Web.UI.Page
    {
        protected void ButtonCalculateSum_Click(object sender, EventArgs e)
        {
            try
            {
                var firstNum = decimal.Parse(this.FirstNum.Text);
                var secondNum = decimal.Parse(this.SecondNum.Text);
                var sum = firstNum + secondNum;
                
                Style s = new Style();
                s.ForeColor = System.Drawing.Color.Red;
                this.Label.ApplyStyle(s);
                this.Label.Text = "Done";

                s.ForeColor = System.Drawing.Color.Green;
                s.BackColor = System.Drawing.Color.GhostWhite;
                this.TextBoxSum.ApplyStyle(s);
                this.TextBoxSum.Text = sum.ToString();
            }
            catch (Exception)
            {
                this.TextBoxSum.Text = "Invalid.";
            }
        }
    }
}