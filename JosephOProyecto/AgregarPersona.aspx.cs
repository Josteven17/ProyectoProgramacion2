using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class AgregarPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BAgregarPersona_Click(object sender, EventArgs e)
        {
            if (VerificarEspacios())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Espacios sin completar');", true);
            }
            else
            {
                GuardatDatos();
                ClasePrincipal.AgregarPersonaCP();
                ActualizarTabla();
            }
            
        }

        public void GuardatDatos()
        {
            ClasePrincipal.SetNombre(TNombreCP.Text);
            ClasePrincipal.SetCedula(TCedulaCP.Text);
            ClasePrincipal.SetApellido1(TApellido1CP.Text);
            ClasePrincipal.SetApellido2(TApellido2CP.Text);
            ClasePrincipal.SetDireccion(TDireccionCP.Text);
            ClasePrincipal.SetTelefono(TTelefonoCP.Text);
        }
        protected void ActualizarTabla()
        {

            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("sp_ActualizarTabla", con);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private Boolean VerificarEspacios()
        {
            Boolean Verificador = false;
            if (String.IsNullOrEmpty(TNombreCP.Text) || String.IsNullOrEmpty(TCedulaCP.Text)
                || String.IsNullOrEmpty(TApellido1CP.Text) || String.IsNullOrEmpty(TApellido2CP.Text) ||
                String.IsNullOrEmpty(TDireccionCP.Text) || String.IsNullOrEmpty(TTelefonoCP.Text))
            {
                Verificador = true;

            }
            return Verificador;
        }
    }
}