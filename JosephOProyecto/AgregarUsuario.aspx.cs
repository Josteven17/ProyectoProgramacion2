using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BAgregar_Click(object sender, EventArgs e)
        {
            if (VerificarEspacios())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Espacios sin completar');", true);
            }
            else
            {
                GuardatDatosUs();
                if (ClasePrincipal.AgregarUsuarios())
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario ha sido agregado');", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Error al agregar usuario');", true);

                }
            }

            
        }
        public void GuardatDatosUs()
        {
            ClasePrincipal.SetEmail(TEmail.Text);
            ClasePrincipal.SetIdUsuario(int.Parse(DIdUsuario.SelectedValue));
            ClasePrincipal.SetTipoUsuario(int.Parse(DTipoUsuario.SelectedValue));
            ClasePrincipal.SetClave(TClave.Text);
        }
        private Boolean VerificarEspacios()
        {
            Boolean Verificador = false;
            if (String.IsNullOrEmpty(TEmail.Text) || String.IsNullOrEmpty(TClave.Text))
            {
                Verificador = true;

            }
            return Verificador;
        }
    }
}