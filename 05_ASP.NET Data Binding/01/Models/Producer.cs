using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _01.Models
{
    public class Producer
    {
        public Producer(string name)
        {
            this.Name = name;
            this.Models = new List<string>();
            for (int i = 1; i < 11; i++)
            {
                string model = this.Name + " model " + i.ToString();
                this.Models.Add(model);
            }
        }


        public string Name { get; set; }

        public IList<string> Models { get; set; }

    }
}