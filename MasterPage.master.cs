using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["PageCounter"] == null) //If you are the first visitor to the application and the counter is null
        {
            Application["PageCounter"] = 1; //increase the page count
        }
        else
        {

            Application["PageCounter"] = (int)Application["PageCounter"] + 1; //new visitors increase the count

        }
        visitNo.Text = Convert.ToString(Application["PageCounter"]);
    }

}
