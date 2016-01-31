using System;
using System.Drawing;
using System.IO;
using System.Web;

namespace CustomHttpHandler
{
    public class TextToImageHandler : IHttpHandler
    {
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "image/png";
            string imageAsString = context.Request.Params[0];
            byte[] imageAsByteArr = Convert.FromBase64String(imageAsString);
            using (Bitmap image = (Bitmap)Image.FromStream(new MemoryStream(imageAsByteArr)))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    image.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    ms.WriteTo(context.Response.OutputStream);
                }
            }
        }
    }
}