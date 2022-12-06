using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Valtronix.Pages
{
    public partial class Pallet_Build : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            viewStation1.DataBind();
            viewStation2.DataBind();
            viewStation3.DataBind();
            viewStation4.DataBind();
            viewStation5.DataBind();
            viewStation6.DataBind();
            viewStation7.DataBind();
            viewStation8.DataBind();
            viewStation9.DataBind();
            viewStation10.DataBind();
            viewStation11.DataBind();
            viewStation12.DataBind();
                      
        }

        
        protected void viewStation5_DataBound(object sender, EventArgs e)
        {
            lblR1O1_Unscanned.Text = "Trays Left To Scan: " + viewStation5.Rows.Count.ToString();
        }

        protected void viewStation6_DataBound(object sender, EventArgs e)
        {
            lblR1O2_Unscanned.Text = "Trays Left To Scan: " + viewStation6.Rows.Count.ToString();
        }

        protected void viewStation7_DataBound(object sender, EventArgs e)
        {
            lblR2O1_Unscanned.Text = "Trays Left To Scan: " + viewStation7.Rows.Count.ToString();
        }

        protected void viewStation8_DataBound(object sender, EventArgs e)
        {
            lblR2O2_Unscanned.Text = "Trays Left To Scan: " + viewStation8.Rows.Count.ToString();
        }
    }
}