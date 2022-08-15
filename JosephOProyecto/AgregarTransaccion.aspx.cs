using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class AgregarTransaccion : System.Web.UI.Page
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
                GuardatDatos();
                if (ClasePrincipal.AgregarTransaccion())
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Transaccion ha sido agregada');", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Transaccion no ha sido agregada');", true);

                }
            }
            
        }
        public void GuardatDatos()
        {
            ClasePrincipal.SetTipoTransaccion(int.Parse(DTTransaccion.SelectedValue));
            ClasePrincipal.SetDescripion(TDescripcion.Text);
            ClasePrincipal.SetMonto(float.Parse(TMonto.Text));
            ClasePrincipal.SetFecha(TFecha.Text);

        }

        private Boolean VerificarEspacios()
        {
            Boolean Verificador = false;
            if ( String.IsNullOrEmpty(TDescripcion.Text) || String.IsNullOrEmpty(TMonto.Text)
                || String.IsNullOrEmpty(TFecha.Text))
            {
                Verificador = true;

            }
            return Verificador;
        }
    }
}