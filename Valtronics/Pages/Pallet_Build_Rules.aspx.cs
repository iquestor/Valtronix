using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Valtronics.Pages
{
    public partial class Pallet_Build_Rules : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
            GridView1.EditIndex = e.NewEditIndex;
            DataBind();
            int c = GridView1.Rows[e.NewEditIndex].Cells.Count - 1;
            Button setButton = (Button) GridView1.Rows[e.NewEditIndex].Cells[c].FindControl("Button1");
            // doesn't work!!
            setButton.Visible = true;
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {

            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                Button setButton = (Button)gvrow.Cells[7].FindControl("Button1");
                
            }
        }
    }
}