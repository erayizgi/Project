using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Combination : System.Web.UI.Page
{
    Combinations comb = new Combinations();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["combination"] != null)
        {
            int id = Convert.ToInt32(Request.QueryString["combination"].ToString());
            DataTable dt = new DataTable();
            dt = comb.getCombination(id);
            foreach(DataRow dr in dt.Rows)
            {
                CombinationName.Text = dr["comb_name"].ToString();
                UserName.Text = dr["username"].ToString();
                Votes.Text = dr["votes"].ToString();
                CombType.Text = dr["com_type"].ToString();
                double pr = Convert.ToDouble(Price.Text);
                double pr2 = Convert.ToDouble(dr["price"].ToString());
                double tot = pr + pr2;
                Price.Text = tot.ToString();
                VoteLink.NavigateUrl = "Combination.aspx?combination=" + id + "&Vote=" + id;
                if(Convert.ToInt32(dr["outfit_type_id"].ToString()) == 1)
                {
                    Top.ImageUrl = "assets/product_images/" + dr["outfit_img"];
                }else if(Convert.ToInt32(dr["outfit_type_id"].ToString()) == 2)
                {
                    Bottom.ImageUrl = "assets/product_images/" + dr["outfit_img"];
                }else if(Convert.ToInt32(dr["outfit_type_id"].ToString()) == 3)
                {
                    Shoes.ImageUrl = "assets/product_images/" + dr["outfit_img"];
                }else if(Convert.ToInt32(dr["outfit_type_id"].ToString()) == 5)
                {
                    Accessories.ImageUrl = "assets/product_images/" + dr["outfit_img"];
                }
            }
            RandomList.DataSource = comb.getCombinationsRandom();
            RandomList.DataBind();
            //imageRepeater.DataSource = comb.getCombination(id);
            //imageRepeater.DataBind();
            //foreach(int key in imageRepeater.DataSource.)
        }
        if (Request.QueryString["Vote"] != null)
        {
            Request.QueryString["Vote"].ToString();
            if (comb.VoteUp(Convert.ToInt32(Request.QueryString["Vote"].ToString())))
            {
                Response.Write("<script>alert('Thanks For Voting!')</script>");
                Response.Write("<script>window.location.href='Combination.aspx?combination="+ Request.QueryString["Vote"].ToString() + "'</script>");
            }
        }
    }
}