using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Controllers;
using WebApplication2.Models;

namespace WebApplication2.Views
{
    public partial class RecordU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_ServerClick(object sender, EventArgs e)
        {
            FBRegisterUser Ruser = new FBRegisterUser()
            {
                email = txtemail.Value,
                password = txtPass.Value

            };

             RecordControllers recordControllers = new RecordControllers();

            {
                if (recordControllers.RegisterUser(Ruser))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('registration completed')", true);
                }
                else {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('registration incompleted')", true);
                }


             };

    }
}
}