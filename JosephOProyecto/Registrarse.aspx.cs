using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BRegistar_Click(object sender, EventArgs e)
        {
            if (VerificarEspacios())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Espacios sin completar');", true);
            }
            else
            {
                GuardatDatos();
                ClasePrincipal.Registrar();
                Response.Redirect("Log.aspx");
            }
           
            
        }

        public void GuardatDatos()
        {
            ClasePrincipal.SetNombre(TNombre.Text);
            ClasePrincipal.SetCedula(TCedula.Text);
            ClasePrincipal.SetApellido1(TApellido1.Text);
            ClasePrincipal.SetApellido2(TApellido2.Text);
            ClasePrincipal.SetDireccion(TDireccion.Text);
            ClasePrincipal.SetTelefono(TTelefono.Text);
            ClasePrincipal.SetEmail(TEmail.Text);
            ClasePrincipal.SetTipoUsuario(int.Parse(DTUsuario.SelectedValue));
            ClasePrincipal.SetClave(TClave.Text);   
        }
        private Boolean VerificarEspacios()
        {
            Boolean Verificador = false;
            if (String.IsNullOrEmpty(TNombre.Text) || String.IsNullOrEmpty(TCedula.Text) 
                || String.IsNullOrEmpty(TApellido1.Text) || String.IsNullOrEmpty(TApellido2.Text) ||
                String.IsNullOrEmpty(TDireccion.Text) || String.IsNullOrEmpty(TTelefono.Text) || String.IsNullOrEmpty(TEmail.Text)
                || String.IsNullOrEmpty(TClave.Text))
            {
                Verificador = true;

            }
            return Verificador;
        }



    }
}