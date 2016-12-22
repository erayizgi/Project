using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateCombination : System.Web.UI.Page
{
    Combinations comb = new Combinations();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null)
        {
            Response.Redirect("Register.aspx");
        }
    }

    protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
    {
        int gender = Convert.ToInt32(Gender.SelectedItem.Value.ToString());
        DataTable dt = comb.getCombinationTypes(gender);
        CombinationType.Enabled = true;
        CombinationType.DataSource = dt;
        CombinationType.DataBind();
        CombinationType.DataTextField = "com_type";
        CombinationType.DataValueField = "com_type_id";
        CombinationType.DataBind();
    }

    protected void CombinationType_SelectedIndexChanged(object sender, EventArgs e)
    {
        int comType = Convert.ToInt32(CombinationType.SelectedItem.Value.ToString());
        DataTable dt = comb.getCombinationOutfitRel(comType);
        CombinationParts.DataSource = dt;
        CombinationParts.DataBind();
        CombinationParts.DataTextField = "type_name";
        CombinationParts.DataValueField = "type_id";
        CombinationParts.DataBind();
        CombinationParts.Enabled = true;
    }

    protected void CombinationParts_SelectedIndexChanged(object sender, EventArgs e)
    {
        int outfitType = Convert.ToInt32(CombinationParts.SelectedItem.Value.ToString());
        OutfitList.DataSource = comb.getOutfits(outfitType);
        OutfitList.DataBind();
        OutfitList.SelectedIndex = -1;

    }

    protected void OutfitList_ItemCommand(object source, DataListCommandEventArgs e)
    {
        OutfitList.SelectedIndex = e.Item.ItemIndex;
        int outfitType = Convert.ToInt32(CombinationParts.SelectedItem.Value.ToString());
        OutfitList.DataSource = comb.getOutfits(outfitType);
        TextBox tt = (TextBox)e.Item.FindControl("TextBox1");
        Session[CombinationParts.SelectedItem.Value.ToString()] = tt.Text;
        SaveButton.Enabled = true;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        if (com_name.ToString().Length > 0 && CombinationType.SelectedItem != null)
        {
            
            if(CombinationParts.Items.Count == (HttpContext.Current.Session.Count - 2))
            {
                int combinationID = comb.createCombination(Convert.ToInt32(CombinationType.SelectedItem.Value.ToString()), com_name.Text.ToString());
                foreach (string key in HttpContext.Current.Session.Keys)
                {
                    if (key != "user_id" || key != "username" || key != null)
                    {
                        if (CombinationParts.Items.FindByValue(key) != null)
                        {
                            comb.saveCombinationOutfit(combinationID, Convert.ToInt32(key), Convert.ToInt32(HttpContext.Current.Session[key].ToString()), Convert.ToInt32(HttpContext.Current.Session["user_id"].ToString()));
                        }
                    }

                }
                string username = HttpContext.Current.Session["username"].ToString();
                string user_id = HttpContext.Current.Session["user_id"].ToString();
                Session.RemoveAll();
                Session["username"] = username;
                Session["user_id"] = user_id;
                Response.Redirect("CombinationList.aspx");

            }
            else
            {
                Response.Write("<script>alert('You need to select at least 1 piece from each combination part')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Failure')</script>");
        }

    }
}