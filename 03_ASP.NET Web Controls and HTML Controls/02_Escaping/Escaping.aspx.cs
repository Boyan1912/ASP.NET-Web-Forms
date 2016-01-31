using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02_Escaping
{
    public partial class Escaping : System.Web.UI.Page
    {
        
        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            //this.EscapedText.Enabled = true;
            //var literal = new Literal()
            //{
            //    Mode = LiteralMode.Encode
            //};

            //literal.Text = this.OriginalText.Text;

            var encodedContent = Server.HtmlEncode(this.OriginalText.Text);
            this.Response.Write(encodedContent);
            this.EscapedText.Text = Server.HtmlDecode(encodedContent);

        }
    }
}