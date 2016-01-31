using System;
using System.Web;

//Server Error in '/' Application.
//Could not load type '02_Hello_WebForms.PageLifecycleHandler' from assembly '02_Hello_WebForms'.

namespace _02_Hello_WebForms
{
    public class PageLifecycleHandler : IHttpHandler
    {

        public bool IsReusable
        {
            get { return true; }
        }

        public void ProcessRequest(HttpContext context)
        {
            var currEvent = context.CurrentNotification.ToString();
            context.Response.Write(string.Format("{0} - {1}", currEvent, DateTime.UtcNow));
        }

    }
}
