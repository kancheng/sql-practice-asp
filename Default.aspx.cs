using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static int count;

    static _Default()
    {
        count = 0;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        count++;  // 記錄數加一
        lblOutput.Text = count.ToString();
        try
        {
            SqlDataSource1.SelectCommand = txtSQL.Text;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            /* Error handle */
            Panel3.Visible = true;
            Label3.Text = "Error "+ count + " : <br/><hr>" + ex.ToString();
        }
        finally {
            /* Show test value */
            Panel2.Visible = true;
            Label2.Text += " SQL " + count + " : " + txtSQL.Text + "<br/><hr>";
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        /*
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
        }*/
    }
}