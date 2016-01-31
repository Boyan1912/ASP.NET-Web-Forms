using System;
namespace _01_Random
{
    public partial class HtmlControls : System.Web.UI.Page
    {
        
        protected override void OnPreRender(EventArgs e)
        {
            this.rndGen.Attributes.Add("onclick", "var result = document.getElementById('result'); result.value=Math.floor((Math.random() * max.value) + min.value);");
        }

        protected override void OnPreLoad(EventArgs e)
        {
            if (this.result.Value != "")
            {
                this.result.Attributes.Remove("style");
            }
        }
    }
}