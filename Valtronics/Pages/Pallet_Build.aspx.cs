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
        }
    }
}