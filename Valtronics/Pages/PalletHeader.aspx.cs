using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Valtronics.Pages
{
    public partial class PalletHeader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked == true)
            {
                Timer1.Enabled = true;
                CheckBox2.ForeColor = System.Drawing.Color.Red;
            }

            else
            {
                Timer1.Enabled = false;
                CheckBox2.ForeColor = System.Drawing.Color.Black;
            }
        }
    }
}