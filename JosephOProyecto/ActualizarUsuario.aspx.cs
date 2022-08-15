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
    public partial class ActualizarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BActualizar_Click(object sender, EventArgs e)
        {
            if (VerificarEspacios())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Espacios sin completar');", true);
            }
            else
            {
                GuardarDatosUs();
                ClasePrincipal.ActualizarUsuario();
                ConsultaUS();
            }
            
        }
        public void GuardarDatosUs()
        {
            ClasePrincipal.SetIdConsulta(int.Parse(DId.SelectedValue));
            ClasePrincipal.SetTipoUsuario(int.Parse(DTipoUsuario.SelectedValue));
            ClasePrincipal.SetClave(TClave.Text);
        }
        protected void ConsultaUS()
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("Sp_ConsultarUsuario", con);
            command.Parameters.Add(new SqlParameter("idusuario", int.Parse(DId.SelectedValue)));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GUsuario.DataSource = dt;
            GUsuario.DataBind();
        }

        private Boolean VerificarEspacios()
        {
            Boolean Verificador = false;
            if (String.IsNullOrEmpty(TClave.Text))
            {
                Verificador = true;

            }
            return Verificador;
        }
    }
}