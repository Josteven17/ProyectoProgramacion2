using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class EliminarTipoUS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void BEliminar_Click(object sender, EventArgs e)
        {
            ClasePrincipal.SetIdConsulta(int.Parse(DId.SelectedValue));
            if (ClasePrincipal.EliminarTipoUsuario())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Tipo de usuario ha sido borrado');", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Tipo de usuario no ha sido borrado');", true);

            }
        }
    }
}