using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    User usr = new User();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["user_id"])>0)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void Register_Btn_Click(object sender, EventArgs e)
    {
        string username = Username_reg.Text;
        string mail = Mail_reg.Text;
        string pass = Password_reg.Text;
        if(username.Trim().Length == 0)
        {
            Register_error.Text = "Please enter a username";
        }else if(mail.Trim().Length == 0)
        {
            Register_error.Text = Register_error.Text + " <br> Please enter a valid mail address";
        }else if(pass.Trim().Length == 0)
        {
            Register_error.Text = Register_error.Text + " <br> Please enter a password";
        }else
        {
            if (usr.userRegister(username, pass, mail))
            {
                Register_error.Text = "<b style='color:green;'> You've registered! Now you can login </b>";
            }
        }
    }

    protected void LoginCheck_Click(object sender, EventArgs e)
    {
        string username = Username_login.Text;
        string pass = Password_login.Text;
        if(username.Trim().Length >0 && pass.Trim().Length > 0)
        {
            int userid = usr.loginCheck(username, pass);
            if (userid>0)
            {
                DataSet user = new DataSet();
                user = usr.getUser(userid);
                Session["username"] = user.Tables[0].Rows[0]["username"];
                Session["user_id"] = user.Tables[0].Rows[0]["user_id"];
                Response.Redirect("Default.aspx");
            }else
            {
                Login_error.Text = "<b style='color:red;'>Wrong username or password. Please check your information</b>";
            }
        }
    }
}