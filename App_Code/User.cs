using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    string connectionString = System.Configuration.ConfigurationManager.AppSettings["connString"];
    SqlConnection conn;
    public User()
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
        }catch(Exception ex)
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
    public bool userRegister(string uname,string pass, string mail)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO users (username,mail,password) VALUES (@uname,@mail,@pass)", conn);
        cmd.Parameters.AddWithValue("uname", uname);
        cmd.Parameters.AddWithValue("mail", mail);
        cmd.Parameters.AddWithValue("pass", pass);
        int result = cmd.ExecuteNonQuery();
        if(result > 0)
        {
            return true;
        }
        else
        {
            return false;
        }

    }
    public int loginCheck(string username,string pass)
    {
        SqlCommand cmd = new SqlCommand("SELECT user_id,username,password FROM users WHERE username=@uname AND password=@pass", conn);
        cmd.Parameters.AddWithValue("uname", username);
        cmd.Parameters.AddWithValue("pass", pass);
        DataSet ds = new DataSet();
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        adapter.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            return Convert.ToInt32(ds.Tables[0].Rows[0]["user_id"].ToString()); 
        }
        else
        {
            return 0;
        }

    }
    public DataSet getUser(int userID)
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE user_id=@uid", conn);
        cmd.Parameters.AddWithValue("uid", userID);
        DataSet ds = new DataSet();
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        adapter.Fill(ds);
        return ds;
    }
}