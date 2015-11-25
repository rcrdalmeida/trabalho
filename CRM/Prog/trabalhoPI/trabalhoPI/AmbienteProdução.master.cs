using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabalhoPI
{
    public partial class AmbienteProdução : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonFuncionarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("FuncionarioInfo.aspx");
        }
    }
}