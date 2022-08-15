using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.EnterpriseServices;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JosephOProyecto
{
    public partial class ActualizarTransaccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BActuaizar_Click(object sender, EventArgs e)
        {
            if (VerificarEspacios())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Espacios sin completar');", true);
            }
            else
            {
                ClasePrincipal.SetIdConsulta(int.Parse(DId.SelectedValue));
                GuardatDatos();
                ClasePrincipal.ActualizarTransaccion();
                ConsultaTransaccion();
            }
           
        }

        public void GuardatDatos()
        {
            ClasePrincipal.SetTipoTransaccion(int.Parse(DTransaccion.SelectedValue));
            ClasePrincipal.SetDescripion(TDescripcion.Text);
            ClasePrincipal.SetMonto(float.Parse(TMonto.Text));
            ClasePrincipal.SetFecha(TFecha.Text);

        }
        protected void ConsultaTransaccion()
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ProjectProgra2ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("Sp_ConsultarTransa", con);
            command.Parameters.Add(new SqlParameter("id", int.Parse(DId.SelectedValue)));
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
            if (String.IsNullOrEmpty(TDescripcion.Text) || String.IsNullOrEmpty(TMonto.Text) || String.IsNullOrEmpty(TFecha.Text))
            {
                Verificador = true;

            }
            return Verificador;
        }
    }
}