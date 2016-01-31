namespace _01
{
    using _01.Models;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;


    public partial class _Default : Page
    {
        private IList<Producer> producers;
        private IList<string> extras;
        private IList<string> engineTypes;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.producers = this.GetProducers();
            this.extras = this.GetExtras();
            this.engineTypes = new List<string>()
            {
                "diesel",
                "gas",
                "methane",
                "hybrid",
                "electric"
            };


            if (!this.IsPostBack)
            {
                this.CarsDropDownList.DataSource = this.producers;
                //this.CarsDropDownList.DataBind();
                //this.Page.DataBind();

                this.ExtrasCheckBoxList.DataSource = this.extras;
                //this.ExtrasCheckBoxList.DataBind();

                this.EngineTypeList.DataSource = this.engineTypes;
                this.Page.DataBind();
            }
        }

        private IList<Producer> GetProducers()
        {
            var producers = new List<Producer>();
            for (int i = 1; i < 11; i++)
            {
                string name = "Automobile " + i;
                Producer pr = new Producer(name);
                producers.Add(pr);
            }

            return producers;
        }

        private IList<string> GetExtras()
        {
            var extras = new List<string>();
            for (int i = 1; i < 6; i++)
            {
                string extra = "Extra " + i;
                extras.Add(extra);
            }

            return extras;
        }

        protected void CarsDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selected = this.CarsDropDownList.SelectedIndex;

            this.ModelsDropDownList.DataSource = this.producers[selected].Models;
            this.ModelsDropDownList.DataBind();
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            string[] selectedExtras = this.GetSelectedCheckboxValues();

            string result = string.Format("You selected {0}, {1} with {2} and {3} engine type", this.CarsDropDownList.SelectedValue, this.ModelsDropDownList.SelectedValue, string.Join(", ", selectedExtras), this.EngineTypeList.SelectedValue);

            this.Result.Text = result;
        }

        private string[] GetSelectedCheckboxValues()
        {
            List<string> selected = new List<string>();
            foreach (ListItem item in this.ExtrasCheckBoxList.Items)
            {
                if (item.Selected)
                {
                    selected.Add(item.Value);
                }
            }

            return selected.ToArray();
        }
    }
}