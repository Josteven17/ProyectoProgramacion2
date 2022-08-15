using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class AgregarTipoUS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BAgregar_Click(object sender, EventArgs e)
        {
            ClasePrincipal.SetDescripion(TDEscripcion.Text);
            if (ClasePrincipal.AgregarTipoUsuario())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Tipo de usuario agregado');", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Error al agregar tipo de usuario');", true);

            }
        }
    }
}