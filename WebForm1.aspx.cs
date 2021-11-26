using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ShoppingCart
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if(dt != null)
            {
                Label4.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label4.Text = "0";
            }
             
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "addtocart")
            {
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString());
            }

        }
    }
}