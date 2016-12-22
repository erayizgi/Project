using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Combinations comb = new Combinations();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Vote"] != null)
        {
            Request.QueryString["Vote"].ToString();
            if (comb.VoteUp(Convert.ToInt32(Request.QueryString["Vote"].ToString())))
            {
                Response.Write("<script>alert('Thanks For Voting!')</script>");
                Response.Write("<script>window.location.href='CombinationList.aspx'</script>");
            }
        }
        RepeaterList.DataSource = comb.getCombinationTypesNo();
        RepeaterList.DataBind();
        CombinationList1.DataSource = comb.getCombinations();
        CombinationList1.DataBind();
    }

}