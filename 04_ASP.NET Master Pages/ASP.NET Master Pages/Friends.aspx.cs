using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Master_Pages
{
    public partial class Friends : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string friend = "Pesho ";
            
            for (int i = 1; i < 15; i++)
            {
                var li = new ListItem()
                {
                    Text = friend + i.ToString()
                };

                li.Attributes.Add("onclick", "window.alert('You clicked a friend!'); return false;");
                li.Attributes.Add("class", "list-group-item");
                this.FriendsList.Items.Add(li);
            }

        }
    }
}