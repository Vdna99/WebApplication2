using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Controllers;

namespace WebApplication2.Views
{
    public partial class GameDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["id"]);

            GamesControllers gamesControllers = new GamesControllers(); 
            RepGame.DataSource = gamesControllers.GetGame(id);
            RepGame.DataBind();

        }
    }
}