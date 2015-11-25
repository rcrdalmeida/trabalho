using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabalhoPI
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonEntrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AmbienteProducao.aspx");
        }
    }
}