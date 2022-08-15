using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class MenuPrincipal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LUsuario.Text = ClasePrincipal.GetCorreo();
            LFecha.Text = DateTime.Now.ToString("MM-dd-yyyy");
        }
    }
}