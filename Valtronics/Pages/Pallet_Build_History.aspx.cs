using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Valtronics.Pages
{
    public partial class Pallet_Build_History : System.Web.UI.Page
    {

        string gSqlCmd = "Select * from PalletHeader;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            setSqlCmd();
            updateGridView();
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            setSqlCmd();
            updateGridView();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked) GridView1.PageSize = 100;
            else GridView1.PageSize = 250;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            setSqlCmd();
            updateGridView();    //binds the GridView to the DataSource

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // clear filter button
            gSqlCmd = "Select * From PalletHeader;";
            txtSearchFor.Text = "";
            updateGridView();

        }

        protected void updateGridView()
        {
            SqlDataSource1.SelectCommand = gSqlCmd;           //sets the SelectCommand of the DataSource to the new query
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);    //executes the SelectCommand

            GridView1.DataSourceID = "";
            GridView1.DataSource = SqlDataSource1;

            GridView1.DataBind();
        }

        protected string setSqlCmd()
        {
            if (txtSearchFor.Text.Length > 0)
            gSqlCmd = "SELECT * FROM PalletHeader where " + DropDownList1.Text + " ='" + txtSearchFor.Text + "';";       //new query to execute

            else gSqlCmd = "SELECT * FROM PalletHeader";

            return gSqlCmd;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}