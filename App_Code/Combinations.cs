using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Combinations
/// </summary>
public class Combinations
{
    string connectionString = System.Configuration.ConfigurationManager.AppSettings["connString"];
    SqlConnection conn;
    public Combinations()
    {
        openConnection();
    }
    protected bool openConnection()
    {
        try
        {
            if (conn.State != ConnectionState.Open)
            {
                conn = new SqlConnection(connectionString);
                conn.Open();
                if (conn.State == ConnectionState.Open)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return true;
            }
        }
        catch (Exception ex)
        {
            conn = new SqlConnection(connectionString);
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
    public DataTable getCombinationTypes(int gender)
    {
        SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM com_types WHERE gender="+gender, conn);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        return dt;
    }
    public DataTable getCombinationTypesNo()
    {
        SqlDataAdapter adapter = new SqlDataAdapter("SELECT  DISTINCT com_type FROM com_types", conn);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        return dt;
    }
    public DataTable getCombinationOutfitRel(int combinationType)
    {
        SqlDataAdapter adapter = new SqlDataAdapter("select * from com_outfit_rel left join outfit_types ON outfit_types.type_id = com_outfit_rel.outfit_type_id where com_outfit_rel.com_type_id = "+combinationType, conn);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        return dt;
    }
    public DataTable getOutfits(int outfitType)
    {
        SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM outfits WHERE outfit_type_id=" + outfitType, conn);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        return dt;

    }
    public int createCombination(int com_type,string com_name)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO combinations (com_type_id,comb_name,created_date) OUTPUT INSERTED.comb_id VALUES (@com_type_id,@comb_name,@cd)", conn);
        cmd.Parameters.AddWithValue("com_type_id", com_type);
        cmd.Parameters.AddWithValue("comb_name", com_name);
        cmd.Parameters.AddWithValue("cd", DateTime.Now);
        int result = (int) cmd.ExecuteScalar();
        
        if (result > 0)
        {
            return result;
        }else
        {
            return 0;
        }

    }
    public void saveCombinationOutfit(int comb_id,int outfit_type_id,int outfit_id,int user_id)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO outfit_combinations (combination_id,outfit_type_id,outfit_id,user_id,created_date) VALUES(@combid,@outtype,@outfitid,@userid,@cd)", conn);
        cmd.Parameters.AddWithValue("combid", comb_id);
        cmd.Parameters.AddWithValue("outtype", outfit_type_id);
        cmd.Parameters.AddWithValue("outfitid", outfit_id);
        cmd.Parameters.AddWithValue("userid", user_id);
        cmd.Parameters.AddWithValue("cd", DateTime.Now);
        cmd.ExecuteNonQuery();
    }
    public DataTable getCombinations()
    {
        SqlDataAdapter cmd = new SqlDataAdapter("select *,(SELECT TOP 1 users.username FROM outfit_combinations INNER JOIN users ON users.user_id = outfit_combinations.user_id WHERE outfit_combinations.combination_id = combinations.comb_id) AS username, (SELECT TOP 1 outfits.outfit_img FROM outfit_combinations LEFT JOIN outfits ON outfits.outfit_id = outfit_combinations.outfit_id WHERE outfit_combinations.combination_id = combinations.comb_id) AS outfit_img,(Select com_types.com_type FROM com_types WHERE com_type_id = combinations.com_type_id) as com_type from combinations order by comb_id desc", conn);
        DataTable dt = new DataTable();
        cmd.Fill(dt);
        return dt;
    }
    public DataTable getCombinationsRandom()
    {
        SqlDataAdapter cmd = new SqlDataAdapter("select TOP 4 *,(SELECT TOP 1 users.username FROM outfit_combinations INNER JOIN users ON users.user_id = outfit_combinations.user_id WHERE outfit_combinations.combination_id = combinations.comb_id) AS username, (SELECT TOP 1 outfits.outfit_img FROM outfit_combinations LEFT JOIN outfits ON outfits.outfit_id = outfit_combinations.outfit_id WHERE outfit_combinations.combination_id = combinations.comb_id) AS outfit_img,(Select com_types.com_type FROM com_types WHERE com_type_id = combinations.com_type_id) as com_type from combinations order by comb_id ASC", conn);
        DataTable dt = new DataTable();
        cmd.Fill(dt);
        return dt;
    }
    public bool VoteUp(int comb_id)
    {
        SqlCommand cmd = new SqlCommand("UPDATE combinations SET votes=votes+1 WHERE comb_id=@cid", conn);
        cmd.Parameters.AddWithValue("cid", comb_id);
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            return true;
        }else
        {
            return false;
        }
    }
    public DataTable getCombination(int comb_id)
    {
        SqlDataAdapter cmd = new SqlDataAdapter("select * from combinations LEFT JOIN outfit_combinations ON outfit_combinations.combination_id = combinations.comb_id LEFT JOIN outfits ON outfits.outfit_id = outfit_combinations.outfit_id LEFT JOIN users ON users.user_id = outfit_combinations.user_id LEFT JOIN com_types ON com_types.com_type_id = combinations.com_type_id  WHERE comb_id =" + comb_id+ " ORDER BY outfits.outfit_type_id ASC", conn);
        DataTable dt = new DataTable();
        cmd.Fill(dt);
        return dt;
    }
}