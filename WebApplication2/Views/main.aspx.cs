using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Controllers;
using WebApplication2.Models;

namespace WebApplication2.Views
{     /// Este parte va ser como donde se mueven los datos entre el backend y el frondend
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GamesControllers GController = new GamesControllers();

            List<Games> gameslist = GController.GetGames();

            RepGames.DataSource = gameslist;
            RepGames.DataBind();

        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            FirebaseUser user = new FirebaseUser()
            {
                email = txtEmail.Value,
                password = txtPwd.Value
            };

            LoginController loginController = new LoginController();

            if (loginController.FirebaseAuth(user))
            {
                Session["session"] = true;

                //Mostranto el boton logout
                divLogout.Attributes.Remove("hidden");
                //Ocultando el login
                divLogin.Attributes.Add("hidden", "hidden");

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login approved')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login denied')", true);
            }
        }



        protected void btnLogout_ServerClick(object sender, EventArgs e)
        {
            //Mostrando el login
            divLogin.Attributes.Remove("hidden");
            //Ocultando el boton logout
            divLogout.Attributes.Add("hidden", "hidden");

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Session has been closed')", true);
            Session.Clear();
        }


    }
}