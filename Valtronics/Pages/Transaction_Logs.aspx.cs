using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Valtronics.Pages
{
    public partial class Transaction_Logs : System.Web.UI.Page
    {
        const string defaultSQL = "Select * From syslog; ";
        string gSqlCmd = defaultSQL;

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
            txtSearchFor.Text = "";
            setSqlCmd();
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
            gSqlCmd = "SELECT * FROM SysLog where " + DropDownList1.Text + " ='" + txtSearchFor.Text + "';";       //new query to execute

            else gSqlCmd = defaultSQL;

            return gSqlCmd;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}